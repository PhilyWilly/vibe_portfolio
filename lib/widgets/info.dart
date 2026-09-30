import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _InfoEntry(name: 'Name', description: 'David Wesch'),
        _InfoEntry(name: 'Age', description: '${_getAge()} (2/9/2007)'),
        _InfoEntry(name: 'Location', description: 'Germany, Heidelberg'),
        _InfoEntry(name: 'Email', description: 'info@davidwesch.com'),
      ],
    );
  }
}

class _InfoEntry extends StatelessWidget {
  const new({required this.name, required this.description});

  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: Vibe.spacing.m,
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: VibeText("$name:"),
          ),
        ),
        Expanded(
          child: VibeText(
            description,
            style: TextStyle(color: Vibe.colors.textSecondary),
          ),
        ),
      ],
    );
  }
}
