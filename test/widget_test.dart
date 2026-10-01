import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:vibe_portfolio/main.dart';

void main() {
  testWidgets('renders the German locale when explicitly requested', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1600, 1200);
    tester.view.devicePixelRatio = 1.0;

    await tester.pumpWidget(const MyApp(locale: Locale('de')));

    expect(find.text('Hallo Welt!'), findsOneWidget);
    expect(find.text('Datenschutzerklärung'), findsOneWidget);
  });
}
