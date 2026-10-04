import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';
import 'package:vibe_portfolio/l10n/app_localizations.dart';
import 'package:vibe_portfolio/pages/home_page.dart';
import 'package:vibe_portfolio/pages/impressum_page.dart';
import 'package:vibe_portfolio/pages/not_found_page.dart';
import 'package:vibe_portfolio/pages/privacy_policy_page.dart';
import 'package:vibe_portfolio/platform_url_strategy.dart'
    if (dart.library.html) 'package:vibe_portfolio/platform_url_strategy_web.dart';

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
  ],
  errorBuilder: (context, state) => const NotFoundPage(),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key, this.locale});

  final Locale? locale;

  @override
  Widget build(BuildContext context) {
    return VibeWidgetApp.router(
      locale: locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _router,
      title: 'David Wesch - Portfolio',
    );
  }
}
