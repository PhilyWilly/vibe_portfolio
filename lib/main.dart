import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:vibe_portfolio/widgets/history.dart';
import 'package:vibe_portfolio/widgets/info.dart';
import 'package:vibe_portfolio/widgets/projects.dart';
import 'package:vibe_portfolio/widgets/skills.dart';
import 'package:vibe_portfolio/widgets/socials.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return VibeWidgetApp(title: 'Portfolio', home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return VibeScaffold(
      child: VibeWindowManager(
        windowsCloasable: false,
        stackedBelowWidth: 800,
        stackedTileHeight: MediaQuery.of(context).size.height * 0.3,
        controller: VibeWindowManagerController(
          windows: [
            VibeWindowSplit(
              axis: Axis.vertical,
              ratio: 0.9,
              first: VibeWindowSplit(
                first: VibeWindowSplit(
                  first: VibeWindowSplit(
                    first: VibeWindow(title: 'Info', child: const Info()),
                    second: VibeWindow(title: 'Skills', child: const Skills()),
                  ),
                  second: VibeWindow(title: 'Socials', child: Socials()),
                  axis: Axis.vertical,
                ),
                second: VibeWindowSplit(
                  first: VibeWindow(title: 'Projects', child: Projects()),
                  second: VibeWindow(title: 'History', child: History()),
                  axis: Axis.vertical,
                ),
              ),
              second: VibeWindow(
                title: 'Hello World!',
                child: const Text('Hello World!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
