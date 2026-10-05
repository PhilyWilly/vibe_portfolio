import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:vibe_portfolio/l10n/app_localizations.dart';

class LegalButtons extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return IntrinsicHeight(
      child: Center(
        child: Wrap(
          spacing: Vibe.spacing.s,
          runSpacing: Vibe.spacing.s,
          clipBehavior: Clip.none,
          children: [
            VibeButton(
              style: VibeButtonStyle.integrated,
              onPressed: () => context.go('/impressum'),
              child: VibeText(localizations.impressum),
            ),
            VibeButton(
              style: VibeButtonStyle.integrated,
              onPressed: () => context.go('/privacy_policy'),
              child: VibeText(localizations.privacyPolicy),
            ),
          ],
        ),
      ),
    );
  }
}
