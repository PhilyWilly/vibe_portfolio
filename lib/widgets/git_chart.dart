import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:http/http.dart' as http;

const String _kGitChartUrl =
    'https://github-contributions-api.jogruber.de/v4/PhilyWilly';

const gitBeginning = Month(4, 2025); // April 2025

class Month {
  final int month;
  final int year;
  const Month(this.month, this.year);

  @override
  String toString() => '$month/$year';

  @override
  int get hashCode => month.hashCode ^ year.hashCode;

  @override
  bool operator ==(Object other) {
    if (other is! Month) return false;
    return month == other.month && year == other.year;
  }

  bool operator <(Object other) {
    if (other is! Month) return false;
    if (year != other.year) return year < other.year;
    return month < other.month;
  }

  bool operator >(Object other) {
    if (other is! Month) return false;
    if (year != other.year) return year > other.year;
    return month > other.month;
  }

  double toUniqueDouble() {
    return year * 12 + month.toDouble();
  }

  factory Month.fromUniqueDouble(double value) {
    final year = value ~/ 12;
    final month = (value % 12).toInt();
    return Month(month, year);
  }
}

class GitChart extends StatelessWidget {
  const GitChart({super.key});

  Future<List<VibeChartPoint>> _fetchSafeData(BuildContext context) async {
    try {
      return await _fetchData();
    } catch (e) {
      print('GitChart: Error fetching data: $e');
      VibeToast.show(
        context,
        title: 'Error fetching Git contributions data.',
        duration: const Duration(seconds: 5),
      );
      return [];
    }
  }

  Future<List<VibeChartPoint>> _fetchData() async {
    // throw Exception('GitChart: Data fetching is disabled for now.');

    final url = Uri.parse(_kGitChartUrl);
    final response = await http.get(url);
    if (response.statusCode != 200) {
      throw Exception('Failed to load data');
    }
    print('GitChart: Data fetched successfully');
    if (response.body.isEmpty) {
      throw Exception('GitChart: Response body is empty');
    }
    final json = jsonDecode(response.body);
    if (json is! Map<String, dynamic>) {
      throw Exception('GitChart: Response body is not a valid JSON object');
    }
    if (!json.containsKey('contributions')) {
      throw Exception('GitChart: Response body does not contain contributions');
    }
    final contributions = json['contributions'];
    if (contributions == null || contributions.isEmpty) {
      throw Exception('GitChart: Contributions data is empty');
    }
    if (contributions is! List) {
      throw Exception('GitChart: Contributions data is not a list');
    }
    // Contrubutions mapped to months
    final Map<Month, int> contributionsByMonth = {};
    for (final contribution in contributions) {
      if (contribution is! Map<String, dynamic>) {
        throw Exception(
          'GitChart: Contribution data is not a valid JSON object',
        );
      }
      final dateString = contribution['date'] as String?;
      final count = contribution['count'] as int?;
      if (dateString == null || count == null) {
        throw Exception('GitChart: Contribution data is missing date or count');
      }
      final date = DateTime.tryParse(dateString);
      if (date == null) {
        throw Exception('GitChart: Invalid date format in contribution data');
      }
      final month = Month(date.month, date.year);
      contributionsByMonth[month] = (contributionsByMonth[month] ?? 0) + count;
    }
    Month smallestMonth = contributionsByMonth.keys.reduce(
      (a, b) => a < b ? a : b,
    );
    if (smallestMonth < gitBeginning) {
      smallestMonth = gitBeginning;
    }
    Month largestMonth = contributionsByMonth.keys.reduce(
      (a, b) => a > b ? a : b,
    );
    final Month now = Month(DateTime.now().month, DateTime.now().year);
    if (largestMonth > now) {
      largestMonth = now;
    }
    final List<VibeChartPoint> data = [];
    for (int year = smallestMonth.year; year <= largestMonth.year; year++) {
      for (int month = 1; month <= 12; month++) {
        final currentMonth = Month(month, year);
        if (currentMonth < smallestMonth || currentMonth > largestMonth) {
          continue;
        }
        final count = contributionsByMonth[currentMonth] ?? 0;
        data.add(
          VibeChartPoint(x: currentMonth.toUniqueDouble(), y: count.toDouble()),
        );
      }
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    final month = Month(4, 2024);
    final uniqueDouble = month.toUniqueDouble();
    final monthFromDouble = Month.fromUniqueDouble(uniqueDouble);
    print(
      'Month: $month, Unique Double: $uniqueDouble, Month from Double: $monthFromDouble',
    );
    return FutureBuilder(
      future: _fetchSafeData(context),
      builder: (context, asyncSnapshot) {
        if (asyncSnapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: VibeText('Loading...'));
        }
        if (asyncSnapshot.hasError) {
          return Center(child: VibeText('Error: ${asyncSnapshot.error}'));
        }
        return VibeChart(
          color: Vibe.colors.glowOrange,
          chartCurve: VibeChartCurve.catmullRom,
          intrinsicWidth: false,
          xAxisLabel: 'Months',
          yAxisLabel: 'Contributions',
          xAxisSteps: 5,
          yAxisSteps: 5,
          formatXTickValue: (value) {
            final month = Month.fromUniqueDouble(value);
            return month.toString();
          },
          formatYTickValue: (value) => value.toInt().toString(),
          tooltipMode: VibeChartTooltipMode.xy,
          intrinsicHeight: false,
          data: asyncSnapshot.data ?? [],
        );
      },
    );
  }
}
