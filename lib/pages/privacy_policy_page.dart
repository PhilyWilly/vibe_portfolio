import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:vibe_portfolio/pages/sub_page.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SubPage(
      child: VibePanel(child: Column(children: [VibeText('a')])),
    );
  }
}
