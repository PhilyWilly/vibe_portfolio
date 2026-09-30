import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';

class NotFoundPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: Vibe.spacing.xl,
        mainAxisSize: MainAxisSize.min,
        children: [
          VibePanel(
            padding: EdgeInsets.all(Vibe.spacing.l),
            child: Text('404 - Page Not Found', style: TextStyle(fontSize: 32)),
          ),
          VibeButton(
            style: VibeButtonStyle.integrated,
            onPressed: () {
              context.go('/');
            },
            child: const Text('Back'),
          ),
        ],
      ),
    );
  }
}
