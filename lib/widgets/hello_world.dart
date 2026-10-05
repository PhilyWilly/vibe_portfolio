import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:vibe_portfolio/l10n/app_localizations.dart';

class HelloWorld extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return IntrinsicHeight(
      child: Center(child: VibeText(localizations.helloWorld)),
    );
  }
}
