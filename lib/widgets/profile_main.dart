import 'package:flutter/material.dart';
import 'package:flutter_application_6/text_styles/home.dart';
import 'profile_button.dart';
import 'profile_stats.dart';
import 'user_profile.dart';

class Contents extends StatelessWidget {
  const Contents({
    super.key,
    required this.avatarUrl,
    required this.name,
    required this.email,
  });

  final String avatarUrl;
    final String name;
    final String email;

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
            UserProfile(avatarUrl: avatarUrl),
            const SizedBox(height: 14),
            // Text('Kunal Chandra Poddar', style: nameStyle),
            NameStyle(name),
            const SizedBox(height: 6),
            // Text('kunal@example.com', style: subtitleStyle),
            SubtitleStyle(email),
            ProfileStats(),

            const SizedBox(height: 12),

            ProfileActionButton(),
          ],
        ),
      ),
    );
  }
}
