import 'package:flutter/widgets.dart';
import 'package:illusionary_vibe/illusionary_vibe.dart';

class Projects extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        _ProjectEntry(
          name: 'IBD Food Scanner',
          description: 'It\'s main functionality is to scan barcodes and provide information about the food product, including whether it is suitable for people with Inflammatory Bowel Disease (IBD).',
          glow: true,
        ),
        _ProjectEntry(
          name: 'Deep Node Analysis',
          description: 'A application to connect data. It uses a graph to visualize the relationships between different data and their connections. It can connect json, csv, excel, sql, apis, and more.',
        ),
      ],
    );
  }
}

class _ProjectEntry extends StatelessWidget {
  const new({required this.name, required this.description, this.glow = false});

  final String name;
  final String description;
  final bool glow;

  @override
  Widget build(BuildContext context) {
    return VibeCard(title: name, subtitle: description, glow: glow);
  }
}
