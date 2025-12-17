import 'package:flutter/material.dart';

class BadgeExample extends StatelessWidget {
  final String nav;
  final IconData icon;
  final String label;

  const BadgeExample({
    super.key,
    required this.nav,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, nav);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Badge(
            backgroundColor: Colors.white,
            child: Icon(icon, size: 26),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
