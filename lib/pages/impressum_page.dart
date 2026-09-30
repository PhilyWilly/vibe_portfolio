import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:vibe_portfolio/pages/sub_page.dart';

class ImpressumPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SubPage(
      child: VibePanel(
        padding: EdgeInsets.all(Vibe.spacing.l),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VibeText.h2('Impressum (Legal Notice)'),
            SizedBox(height: Vibe.spacing.l),
            VibeText.bold('Information pursuant to § 5 DDG'),
            SizedBox(height: Vibe.spacing.s),
            VibeText.subtitle('David Ernestus Wesch'),
            VibeText.subtitle('Wiesenweg 9'),
            VibeText.subtitle('69250 Schönau'),
            VibeText.subtitle('Germany'),
            SizedBox(height: Vibe.spacing.l),
            VibeText.bold('Contact'),
            SizedBox(height: Vibe.spacing.s),
            VibeText.subtitle('Email: info@davidwesch.de'),
          ],
        ),
      ),
    );
  }
}
