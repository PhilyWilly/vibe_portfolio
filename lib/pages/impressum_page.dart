import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:vibe_portfolio/l10n/app_localizations.dart';
import 'package:vibe_portfolio/pages/sub_page.dart';

class ImpressumPage extends StatelessWidget {
  const ImpressumPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return SubPage(
      child: VibePanel(
        padding: EdgeInsets.all(Vibe.spacing.l),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VibeText.h2(localizations.impressum),
            SizedBox(height: Vibe.spacing.l),
            VibeText.bold(localizations.impressumLegalHeading),
            SizedBox(height: Vibe.spacing.s),
            VibeText.subtitle('David Ernestus Wesch'),
            VibeText.subtitle('Wiesenweg 9'),
            VibeText.subtitle('69250 Schönau'),
            VibeText.subtitle(localizations.country),
            SizedBox(height: Vibe.spacing.l),
            VibeText.bold(localizations.contact),
            SizedBox(height: Vibe.spacing.s),
            VibeText.subtitle('${localizations.emailLabel} info@davidwesch.de'),
          ],
        ),
      ),
    );
  }
}
