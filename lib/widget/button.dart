import 'package:flutter/material.dart';

class BadgeExample extends StatelessWidget {
  final IconData icon;
  final String? label;
  final double s;
  final VoidCallback onTap;

  const BadgeExample({
    super.key,
    required this.icon,
    this.label,
    required this.s, 
    required this.onTap, 
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Badge(backgroundColor: Colors.white, child: Icon(icon, size: s)),
          const SizedBox(height: 4),
          if (label != null)...[
            const SizedBox(height: 4),
            Text(label!, style: const TextStyle(fontSize: 12)),
            ]
        ],
      ),
    );
  }
}
