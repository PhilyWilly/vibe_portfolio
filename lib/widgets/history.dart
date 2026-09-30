import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';

class History extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return VibeInstructions(
      collapsed: true,
      numbered: false,
      instructions: [
        Column(
          children: [
            VibeText('2023 July'),
            VibeText(
              'Realschule Graduation (1,8)',
              style: TextStyle(color: Vibe.colors.textSecondary),
            ),
          ],
        ),
        Column(
          children: [
            VibeText('2026 July'),
            VibeText(
              'Abitur Graduation (2,4)',
              style: TextStyle(color: Vibe.colors.textSecondary),
            ),
          ],
        ),
        Column(
          children: [
            VibeText('2025 February - present'),
            VibeText(
              'Rehatec GmbH - Software Developer',
              style: TextStyle(color: Vibe.colors.textSecondary),
            ),
          ],
        ),
      ],
    );
  }
}
