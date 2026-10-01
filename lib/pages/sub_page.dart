import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';

class SubPage extends StatelessWidget {
  const new({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: pow(
              MediaQuery.of(context).size.width * 0.01,
              2,
            ).toDouble(),
            vertical: MediaQuery.of(context).size.width * 0.02,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: Vibe.spacing.xxl,
            children: [
              child,
              VibeButton(
                style: VibeButtonStyle.integrated,
                onPressed: () {
                  if (context.canPop()) {
                    context.pop();
                  } else {
                    context.go('/');
                  }
                },
                child: const VibeText('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
