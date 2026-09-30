import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:vibe_portfolio/pages/sub_page.dart';

class NotFoundPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SubPage(
      child: VibeText('404 - Page Not Found', style: TextStyle(fontSize: 32)),
    );
  }
}
