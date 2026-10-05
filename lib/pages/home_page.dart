import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:vibe_portfolio/l10n/app_localizations.dart';
import 'package:vibe_portfolio/widgets/git_chart.dart';
import 'package:vibe_portfolio/widgets/history.dart';
import 'package:vibe_portfolio/widgets/info.dart';
import 'package:vibe_portfolio/widgets/projects.dart';
import 'package:vibe_portfolio/widgets/skills.dart';
import 'package:vibe_portfolio/widgets/socials.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return VibeScaffold(
      child: VibeWindowManager(
        windowsCloasable: false,
        windowsSwapable: false,
        windowsResizable: true,
        stackedBelowWidth: 800,
        stackedTileHeight: max(MediaQuery.of(context).size.height * 0.35, 340),
        windowsPadding: EdgeInsets.all(Vibe.spacing.m),
        controller: VibeWindowManagerController(
          windows: [
            VibeWindowSplit(
              axis: VibeSplitAxis.vertical,
              ratio: 0.9,
              first: VibeWindowSplit(
                ratio: 0.65,
                first: VibeWindowSplit(
                  first: VibeWindowSplit(
                    ratio: 0.33,
                    first: VibeWindow(
                      title: localizations.info,
                      child: const Info(),
                    ),
                    second: VibeWindowSplit(
                      axis: VibeSplitAxis.horizontal,
                      first: VibeWindow(
                        title: localizations.skills,
                        child: const Skills(),
                      ),
                      second: VibeWindow(
                        title: localizations.socials,
                        child: const Socials(),
                      ),
                    ),
                  ),
                  second: VibeWindow(
                    title: localizations.gitContributions,
                    child: const GitChart(),
                  ),
                  axis: VibeSplitAxis.vertical,
                ),
                second: VibeWindowSplit(
                  secondConstraints: BoxConstraints.tightFor(height: 240),
                  first: VibeWindow(
                    title: localizations.projects,
                    child: const Projects(),
                  ),
                  second: VibeWindow(
                    title: localizations.history,
                    child: const History(),
                  ),
                  axis: VibeSplitAxis.vertical,
                ),
              ),
              second: VibeWindowSplit(
                secondConstraints: BoxConstraints.tightFor(width: 280),
                first: VibeWindow(
                  showTaskbar: false,
                  title: localizations.helloWorld,
                  child: IntrinsicHeight(
                    child: Center(child: VibeText(localizations.helloWorld)),
                  ),
                ),
                second: VibeWindow(
                  showTaskbar: false,
                  child: IntrinsicHeight(
                    child: Center(
                      child: Wrap(
                        spacing: Vibe.spacing.s,
                        runSpacing: Vibe.spacing.s,
                        children: [
                          VibeButton(
                            style: VibeButtonStyle.integrated,
                            onPressed: () => context.go('/impressum'),
                            child: VibeText(localizations.impressum),
                          ),
                          VibeButton(
                            style: VibeButtonStyle.integrated,
                            onPressed: () => context.go('/privacy_policy'),
                            child: VibeText(localizations.privacyPolicy),
                          ),
                        ],
                      ),
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
