import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:vibe_portfolio/pages/sub_page.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SubPage(
      child: VibePanel(
        padding: EdgeInsets.all(Vibe.spacing.l),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VibeText.h1('Privacy Policy'),
            VibeText.subtitle(
              'Last updated: September 2026',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            SizedBox(height: Vibe.spacing.xl),
            VibeText.h3('1. Controller'),
            VibeText.subtitle(
              'The controller responsible for data processing on this website is David Ernestus Wesch, Wiesenweg 9, 69250 Schönau, Germany, info@davidwesch.de.',
            ),
            SizedBox(height: Vibe.spacing.l),
            VibeText.h3('2. General information'),
            VibeText.subtitle(
              'This website is a personal portfolio. It has no user accounts, contact forms, comment functions, or other input fields, so I do not collect any personal data from you directly. Data is processed only as described below.',
            ),
            SizedBox(height: Vibe.spacing.l),
            VibeText.h3('3. Hosting and server log data (Cloudflare)'),
            VibeText.subtitle(
              "This website is hosted and delivered through Cloudflare (Cloudflare, Inc., 101 Townsend St., San Francisco, CA 94107, USA). When you visit the site, your browser automatically transmits technical data to Cloudflare's servers, such as your IP address, the date and time of access, the requested page, and browser and device information. This processing is technically necessary to deliver the website securely and reliably.\n\nLegal basis: Art. 6(1)(f) GDPR (legitimate interest in the secure and efficient operation of the website).\n\nData may be transferred to the USA. Cloudflare is certified under the EU-U.S. Data Privacy Framework, and I have concluded a data processing agreement with Cloudflare. More information: https://www.cloudflare.com/privacypolicy/",
            ),
            SizedBox(height: Vibe.spacing.l),
            VibeText.h3('4. Web analytics (Cloudflare Web Analytics)'),
            VibeText.subtitle(
              'I use Cloudflare Web Analytics to understand how many people visit the site and how it performs. According to Cloudflare, this service works without cookies and without storing information on your device, and it does not track individual visitors across websites or build profiles. Only aggregated statistics such as pages viewed, referrers, country, browser and device type, and performance data are evaluated.\n\nLegal basis: Art. 6(1)(f) GDPR (legitimate interest in improving and securing the website).\n\nYou can object to this processing at any time (see section 6).',
            ),
            SizedBox(height: Vibe.spacing.l),
            VibeText.h3('5. Links to external websites'),
            VibeText.subtitle(
              'This site links to my profiles on GitHub, LinkedIn, Instagram, and X (Twitter). These are plain links. No data is transmitted to these providers until you click one. After that, the respective provider\'s privacy policy applies.',
            ),
            SizedBox(height: Vibe.spacing.l),
            VibeText.h3('6. Your rights'),
            VibeText.subtitle(
              'You have the right to access, rectification, erasure, restriction of processing, data portability, and objection to processing based on legitimate interests (Art. 6(1)(f) GDPR). To exercise these rights, contact me at info@davidwesch.de.',
            ),
            SizedBox(height: Vibe.spacing.l),
            VibeText.h3('7. Right to lodge a complaint'),
            VibeText.subtitle(
              'You have the right to complain to a data protection supervisory authority. The authority responsible for me is the Landesbeauftragte/r für den Datenschutz und die Informationsfreiheit Baden-Württemberg, Lautenschlagerstraße 20, 70173 Stuttgart, Germany.',
            ),
            SizedBox(height: Vibe.spacing.l),
            VibeText.h3('8. Changes'),
            VibeText.subtitle(
              'I may update this policy when the website or the legal situation changes.',
            ),
          ],
        ),
      ),
    );
  }
}
