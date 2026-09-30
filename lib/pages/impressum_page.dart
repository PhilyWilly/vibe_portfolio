import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';

class ImpressumPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: Vibe.spacing.xl,
          children: [
            VibePanel(
              padding: EdgeInsets.all(Vibe.spacing.l),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Impressum (Legal Notice)',
                    style: TextStyle(fontSize: 32),
                  ),
                  SizedBox(height: Vibe.spacing.l),
                  Text(
                    'Information pursuant to § 5 DDG',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: Vibe.spacing.s),
                  Text(
                    'David Ernestus Wesch',
                    style: TextStyle(color: Vibe.colors.textSecondary),
                  ),
                  Text(
                    'Wiesenweg 9',
                    style: TextStyle(color: Vibe.colors.textSecondary),
                  ),
                  Text(
                    '69250 Schönau',
                    style: TextStyle(color: Vibe.colors.textSecondary),
                  ),
                  Text(
                    'Germany',
                    style: TextStyle(color: Vibe.colors.textSecondary),
                  ),
                  SizedBox(height: Vibe.spacing.l),
                  Text('Contact', style: TextStyle(fontSize: 18)),
                  SizedBox(height: Vibe.spacing.s),
                  Text(
                    'Email: info@davidwesch.de',
                    style: TextStyle(color: Vibe.colors.textSecondary),
                  ),
                ],
              ),
            ),
            VibeButton(
              style: VibeButtonStyle.integrated,
              onPressed: () {
                if (context.canPop()) {
                  context.pop();
                } else {
                  context.go('/');
                }
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
