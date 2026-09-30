import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';

class Skills extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        _SkillShowcase(name: 'Flutter', grade: _SkillShowcaseGrade.expert),
        _SkillShowcase(name: 'Python', grade: _SkillShowcaseGrade.advanced),
        _SkillShowcase(name: 'English', grade: _SkillShowcaseGrade.advanced),
        _SkillShowcase(
          name: 'JavaScript',
          grade: _SkillShowcaseGrade.intermediate,
        ),
      ],
    );
  }
}

enum _SkillShowcaseGrade {
  intermediate,
  advanced,
  expert;

  String get name {
    switch (this) {
      case _SkillShowcaseGrade.intermediate:
        return 'Intermediate';
      case _SkillShowcaseGrade.advanced:
        return 'Advanced';
      case _SkillShowcaseGrade.expert:
        return 'Expert';
    }
  }

  Color get color {
    switch (this) {
      case _SkillShowcaseGrade.intermediate:
        return Color.lerp(
          Vibe.colors.textSecondary,
          Vibe.colors.glowOrange,
          0.2,
        )!;
      case _SkillShowcaseGrade.advanced:
        return Color.lerp(
          Vibe.colors.textSecondary,
          Vibe.colors.glowOrange,
          0.5,
        )!;
      case _SkillShowcaseGrade.expert:
        return Color.lerp(
          Vibe.colors.textSecondary,
          Vibe.colors.glowOrange,
          0.8,
        )!;
    }
  }
}

class _SkillShowcase extends StatelessWidget {
  const new({required this.name, required this.grade});

  final String name;
  final _SkillShowcaseGrade grade;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        VibeText(name),
        const Spacer(),
        VibeText.bold(grade.name, style: TextStyle(color: grade.color)),
      ],
    );
  }
}
