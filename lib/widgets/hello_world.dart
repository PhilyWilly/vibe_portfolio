import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:vibe_portfolio/l10n/app_localizations.dart';

class HelloWorld extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return VibeTextField(
      hintText: localizations.helloWorld,
      onSubmitted: (value) {
        switch (value.toLowerCase()) {
          case 'hello world':
          case 'helloworld':
          case 'helloworld!':
          case 'hello world!':
            VibeToast.show(context, title: 'Hello World!');
            break;
          default:
            VibeToast.show(context, title: 'Unknown command: $value');
            break;
        }
      },
    );
  }
}
