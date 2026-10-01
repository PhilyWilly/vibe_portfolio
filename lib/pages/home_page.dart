import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:vibe_portfolio/widgets/history.dart';
import 'package:vibe_portfolio/widgets/info.dart';
import 'package:vibe_portfolio/widgets/projects.dart';
import 'package:vibe_portfolio/widgets/skills.dart';
import 'package:vibe_portfolio/widgets/socials.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return VibeScaffold(
      child: VibeWindowManager(
        windowsCloasable: false,
        windowsSwapable: false,
        windowsResizable: true,
        stackedBelowWidth: 800,
        stackedTileHeight: MediaQuery.of(context).size.height * 0.3,
        windowsPadding: EdgeInsets.all(Vibe.spacing.m),
        controller: VibeWindowManagerController(
          windows: [
            VibeWindowSplit(
              axis: VibeSplitAxis.vertical,
              ratio: 0.9,
              first: VibeWindowSplit(
                first: VibeWindowSplit(
                  first: VibeWindowSplit(
                    first: VibeWindow(title: 'Info', child: const Info()),
                    second: VibeWindow(title: 'Skills', child: const Skills()),
                  ),
                  second: VibeWindow(title: 'Socials', child: const Socials()),
                  axis: VibeSplitAxis.vertical,
                ),
                second: VibeWindowSplit(
                  first: VibeWindow(title: 'Projects', child: const Projects()),
                  second: VibeWindow(title: 'History', child: const History()),
                  axis: VibeSplitAxis.vertical,
                ),
              ),
              second: VibeWindowSplit(
                // ratio: 0.75,
                secondConstraints: BoxConstraints.tightFor(width: 280),
                first: VibeWindow(
                  showTaskbar: false,
                  title: 'Hello World!',
                  child: const VibeText('Hello World!'),
                ),
                second: VibeWindow(
                  showTaskbar: false,
                  child: Center(
                    child: Wrap(
                      spacing: Vibe.spacing.s,
                      runSpacing: Vibe.spacing.s,
                      children: [
                        VibeButton(
                          style: VibeButtonStyle.integrated,
                          onPressed: () => context.go('/impressum'),
                          child: VibeText('Impressum'),
                        ),
                        VibeButton(
                          style: VibeButtonStyle.integrated,
                          onPressed: () => context.go('/privacy_policy'),
                          child: VibeText('Privacy Policy'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
