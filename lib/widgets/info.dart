import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:intl/intl.dart';
import 'package:vibe_portfolio/l10n/app_localizations.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  int _getAge() {
    final birthDate = DateTime(2007, 2, 9);
    final currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;
    if (currentDate.month < birthDate.month ||
        (currentDate.month == birthDate.month &&
            currentDate.day < birthDate.day)) {
      age--;
    }
    return age;
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return IntrinsicHeight(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        spacing: Vibe.spacing.s,
        children: [
          _InfoEntry(name: localizations.name, description: 'David Wesch'),
          _InfoEntry(
            name: localizations.age,
            description:
                '${_getAge()} (${DateFormat.yMMMd(Localizations.localeOf(context).toString()).format(DateTime(2007, 2, 9))})',
          ),
          _InfoEntry(
            name: localizations.location,
            description: '${localizations.country}, Heidelberg',
          ),
          _InfoEntry(
            name: localizations.email,
            description: 'info@davidwesch.de',
          ),
        ],
      ),
    );
  }
}

class _InfoEntry extends StatelessWidget {
  const _InfoEntry({required this.name, required this.description});

  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: Vibe.spacing.m,
      children: [
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.centerRight,
            child: VibeText.bold("$name:"),
          ),
        ),
        Expanded(flex: 2, child: VibeText.subtitle(description)),
      ],
    );
  }
}
