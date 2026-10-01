import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:vibe_portfolio/l10n/app_localizations.dart';
import 'package:vibe_portfolio/pages/sub_page.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return SubPage(
      child: VibePanel(
        padding: EdgeInsets.all(Vibe.spacing.l),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VibeText.h1(localizations.privacyPolicy),
            VibeText.subtitle(
              localizations.privacyPolicyUpdated,
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            SizedBox(height: Vibe.spacing.xl),
            VibeText.h3(localizations.privacyResponsibleTitle),
            VibeText.subtitle(localizations.privacyResponsibleText),
            SizedBox(height: Vibe.spacing.l),
            VibeText.h3(localizations.privacyGeneralTitle),
            VibeText.subtitle(localizations.privacyGeneralText),
            SizedBox(height: Vibe.spacing.l),
            VibeText.h3(localizations.privacyHostingTitle),
            VibeText.subtitle(localizations.privacyHostingText),
            SizedBox(height: Vibe.spacing.l),
            VibeText.h3(localizations.privacyAnalyticsTitle),
            VibeText.subtitle(localizations.privacyAnalyticsText),
            SizedBox(height: Vibe.spacing.l),
            VibeText.h3(localizations.privacyLinksTitle),
            VibeText.subtitle(localizations.privacyLinksText),
            SizedBox(height: Vibe.spacing.l),
            VibeText.h3(localizations.privacyRightsTitle),
            VibeText.subtitle(localizations.privacyRightsText),
            SizedBox(height: Vibe.spacing.l),
            VibeText.h3(localizations.privacyComplaintTitle),
            VibeText.subtitle(localizations.privacyComplaintText),
            SizedBox(height: Vibe.spacing.l),
            VibeText.h3(localizations.privacyChangesTitle),
            VibeText.subtitle(localizations.privacyChangesText),
          ],
        ),
      ),
    );
  }
}
