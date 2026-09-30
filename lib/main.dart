import 'package:flutter/widgets.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:vibe_portfolio/pages/home_page.dart';
import 'package:vibe_portfolio/pages/impressum_page.dart';
import 'package:vibe_portfolio/pages/not_found_page.dart';
import 'package:vibe_portfolio/pages/privacy_policy_page.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
    GoRoute(
      path: '/impressum',
      builder: (context, state) => const ImpressumPage(),
    ),
    GoRoute(
      path: '/privacy_policy',
      builder: (context, state) => const PrivacyPolicyPage(),
    ),
    // GoRoute(
    //   path: '/projects',
    //   builder: (context, state) => const ProjectsPage(),
    // ),
  ],
  // Fallback for unknown routes (404)
  errorBuilder: (context, state) => const NotFoundPage(),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return VibeWidgetApp.router(routerConfig: _router, title: 'Portfolio');
  }
}
