import 'package:flutter/material.dart';

class SetupCard extends StatelessWidget {
  const SetupCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.child,
  });

  final String title;
  final String subtitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              Text(subtitle, style: const TextStyle(color: Colors.black54)),
              const SizedBox(height: 16),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
