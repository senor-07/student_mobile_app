import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../theme/app_theme.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Project Overview', style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 12),
                  const Text(
                    'This app covers Week 1, 2, and 3 practical assignments for Mobile Application Development.',
                  ),
                  const SizedBox(height: 20),
                  _WeekItem(
                    week: 'Week 1',
                    title: 'Hello World + Environment Setup',
                    items: const [
                      'Custom app title',
                      'Background color theme',
                      'Font size customization',
                      'Button interaction',
                    ],
                  ),
                  const Divider(height: 32),
                  _WeekItem(
                    week: 'Week 2',
                    title: 'Mini Student Management App',
                    items: const [
                      'Login page',
                      'Student registration',
                      'SQLite local storage',
                      'Simple navigation',
                    ],
                  ),
                  const Divider(height: 32),
                  _WeekItem(
                    week: 'Week 3',
                    title: 'Complete UI Prototype',
                    items: const [
                      '7 screens with navigation',
                      'Form validation & alerts',
                      'Modern Material 3 UI',
                      'Bottom navigation bar',
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: ListTile(
              leading: Icon(Icons.code, color: AppTheme.accentColor),
              title: const Text('Tech Stack'),
              subtitle: const Text('Flutter • Dart • SQLite • SharedPreferences • GoRouter'),
            ),
          ),
        ],
      ),
    );
  }
}

class _WeekItem extends StatelessWidget {
  final String week;
  final String title;
  final List<String> items;

  const _WeekItem({
    required this.week,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(week, style: TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        ...items.map(
          (item) => Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('•  '),
                Expanded(child: Text(item)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
