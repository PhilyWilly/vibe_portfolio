import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:vibe_portfolio/l10n/app_localizations.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return IntrinsicHeight(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        spacing: Vibe.spacing.l,
        children: [
          _ProjectEntry(
            name: localizations.projectIbdScanner,
            description: localizations.projectIbdDescription,
            glow: true,
          ),
          _ProjectEntry(
            name: 'Deep Node Analysis',
            description: localizations.projectDeepNodeDescription,
          ),
        ],
      ),
    );
  }
}

class _ProjectEntry extends StatelessWidget {
  const _ProjectEntry({
    required this.name,
    required this.description,
    this.glow = false,
  });

  final String name;
  final String description;
  final bool glow;

  @override
  Widget build(BuildContext context) {
    return VibeCard(title: name, subtitle: description, glow: glow);
  }
}
