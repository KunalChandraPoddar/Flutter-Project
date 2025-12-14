import 'package:flutter/material.dart';
import 'info_card.dart';

class Contents extends StatelessWidget {
  const Contents({
    super.key,
    required this.avatarUrl,
    required this.nameStyle,
    required this.subtitleStyle,
  });

  final String avatarUrl;
  final TextStyle nameStyle;
  final TextStyle subtitleStyle;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade300, width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.15),
              blurRadius: 8,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 8),
            ClipOval(
              child: Material(
                color: Colors.grey[200],
                child: Ink.image(
                  image: NetworkImage(avatarUrl),
                  fit: BoxFit.cover,
                  width: 120,
                  height: 120,
                  child: InkWell(
                    onTap: () {},
                    child: Semantics(label: 'Profile Picture'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 14),
            Text('Kunal Chandra Poddar', style: nameStyle),
            const SizedBox(height: 6),
            Text('kunal@example.com', style: subtitleStyle),
            const SizedBox(height: 24),

            InfoCard(icon: Icons.group, title: 'Followers', value: '1200'),
            InfoCard(icon: Icons.person_add, title: 'Following', value: '350'),
            InfoCard(icon: Icons.article, title: 'Posts', value: '48'),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  backgroundColor: Colors.blue,
                ),
                child: const Text(
                  'Edit Profile',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
