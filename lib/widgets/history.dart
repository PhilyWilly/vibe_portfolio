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
            Text('2023 July'),
            Text(
              'Realschule Graduation (1,8)',
              style: TextStyle(color: Vibe.colors.textSecondary),
            ),
          ],
        ),
        Column(
          children: [
            Text('2026 July'),
            Text(
              'Abitur Graduation (2,4)',
              style: TextStyle(color: Vibe.colors.textSecondary),
            ),
          ],
        ),
        Column(
          children: [
            Text('2025 February - present'),
            Text(
              'Rehatec GmbH - Software Developer',
              style: TextStyle(color: Vibe.colors.textSecondary),
            ),
          ],
        ),
      ],
    );
  }
}
