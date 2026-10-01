import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:vibe_portfolio/l10n/app_localizations.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _SkillShowcase(name: 'Flutter', grade: _SkillShowcaseGrade.expert),
        _SkillShowcase(name: 'Python', grade: _SkillShowcaseGrade.advanced),
        _SkillShowcase(name: 'English', grade: _SkillShowcaseGrade.advanced),
        _SkillShowcase(
          name: 'TypeScript',
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

  String getLabel(AppLocalizations localizations) {
    switch (this) {
      case _SkillShowcaseGrade.intermediate:
        return localizations.gradeIntermediate;
      case _SkillShowcaseGrade.advanced:
        return localizations.gradeAdvanced;
      case _SkillShowcaseGrade.expert:
        return localizations.gradeExpert;
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
  const _SkillShowcase({required this.name, required this.grade});

  final String name;
  final _SkillShowcaseGrade grade;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Row(
      children: [
        VibeText(name),
        const Spacer(),
        VibeText.bold(
          grade.getLabel(localizations),
          style: TextStyle(color: grade.color),
        ),
      ],
    );
  }
}
