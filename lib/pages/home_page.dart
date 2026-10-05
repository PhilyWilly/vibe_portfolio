import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:vibe_portfolio/l10n/app_localizations.dart';
import 'package:vibe_portfolio/widgets/git_chart.dart';
import 'package:vibe_portfolio/widgets/hello_world.dart';
import 'package:vibe_portfolio/widgets/history.dart';
import 'package:vibe_portfolio/widgets/info.dart';
import 'package:vibe_portfolio/widgets/legal_buttons.dart';
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
        windowsPadding: EdgeInsets.all(Vibe.spacing.m).copyWith(top: 0),
        controller: VibeWindowManagerController(
          windows: [
            VibeWindowSplit(
              axis: VibeSplitAxis.vertical,
              secondConstraints: BoxConstraints.tightFor(height: 56),
              first: VibeWindowSplit(
                ratio: 0.6,
                first: VibeWindowSplit(
                  axis: VibeSplitAxis.vertical,
                  firstConstraints: BoxConstraints.tightFor(height: 201),
                  first: VibeWindowSplit(
                    ratio: 0.52,
                    first: VibeWindow(
                      title: localizations.info,
                      child: const Info(),
                    ),
                    second: VibeWindow(
                      title: localizations.skills,
                      child: const Skills(),
                    ),
                  ),
                  second: VibeWindow(
                    title: localizations.gitContributions,
                    child: const GitChart(),
                  ),
                ),
                second: VibeWindowSplit(
                  axis: VibeSplitAxis.vertical,
                  secondConstraints: BoxConstraints.tightFor(height: 240),
                  first: VibeWindow(
                    title: localizations.projects,
                    child: const Projects(),
                  ),
                  second: VibeWindowSplit(
                    axis: VibeSplitAxis.horizontal,
                    firstConstraints: BoxConstraints.tightFor(width: 140),
                    first: VibeWindow(
                      title: localizations.socials,
                      child: const Socials(),
                    ),
                    second: VibeWindow(
                      title: localizations.history,
                      child: const History(),
                    ),
                  ),
                ),
              ),
              second: VibeWindowSplit(
                secondConstraints: BoxConstraints.tightFor(width: 280),
                first: VibeWindow(
                  wrapInWindow: false,
                  padding: EdgeInsets.all(Vibe.spacing.m),
                  child: const HelloWorld(),
                ),
                second: VibeWindow(
                  showTaskbar: false,
                  padding: EdgeInsets.all(Vibe.spacing.m),
                  child: const LegalButtons(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
