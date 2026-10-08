import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:url_launcher/url_launcher.dart';

class Socials extends StatelessWidget {
  const Socials({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: Vibe.spacing.m,
        children: [
          _SocialEntry(
            name: 'LinkedIn',
            icon: VibeIcons.linkedinLogo,
            url: 'https://www.linkedin.com/in/david-wesch/',
          ),
          _SocialEntry(
            name: 'GitHub',
            icon: VibeIcons.githubLogo,
            url: 'https://github.com/PhilyWilly',
          ),
          _SocialEntry(
            name: 'Instagram',
            icon: VibeIcons.instagramLogo,
            url: 'https://www.instagram.com/davidewesch/',
          ),
          _SocialEntry(
            name: 'Twitter',
            icon: VibeIcons.xLogo,
            url: 'https://x.com/DavidEWesch',
          ),
        ],
      ),
    );
  }
}

class _SocialEntry extends StatelessWidget {
  const _SocialEntry({
    required this.name,
    required this.icon,
    required this.url,
  });

  final String name;
  final IconData icon;
  final String url;

  @override
  Widget build(BuildContext context) {
    return VibeButton(
      onPressed: () {
        launchUrl(Uri.parse(url));
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: Vibe.spacing.m,
        children: [VibeText(name), Icon(icon)],
      ),
    );
  }
}
