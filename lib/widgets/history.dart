import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:intl/intl.dart';
import 'package:vibe_portfolio/l10n/app_localizations.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final realschuleDate = DateFormat.yMMMM(localizations.localeName)
        .format(DateTime(2023, 7));
    final abiturDate = DateFormat.yMMMM(localizations.localeName)
        .format(DateTime(2026, 7));
    final rehatecDate = DateFormat.yMMMM(localizations.localeName)
        .format(DateTime(2025, 5));

    return VibeInstructions(
      collapsed: true,
      numbered: false,
      instructions: [
        Column(
          children: [
            VibeText(realschuleDate),
            VibeText(
              localizations.historyRealschule,
              style: TextStyle(color: Vibe.colors.textSecondary),
            ),
          ],
        ),
        Column(
          children: [
            VibeText(abiturDate),
            VibeText(
              localizations.historyAbitur,
              style: TextStyle(color: Vibe.colors.textSecondary),
            ),
          ],
        ),
        Column(
          children: [
            VibeText('$rehatecDate – ${localizations.historyRehatecEnd}'),
            VibeText(
              localizations.historyRehatec,
              style: TextStyle(color: Vibe.colors.textSecondary),
            ),
          ],
        ),
      ],
    );
  }
}
