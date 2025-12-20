import 'package:flutter/material.dart';
import 'info_card.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InfoCard(icon: Icons.group, title: 'Followers', value: '1200'),
        InfoCard(icon: Icons.person_add, title: 'Following', value: '350'),
        InfoCard(icon: Icons.article, title: 'Posts', value: '48'),
      ],
    );
  }
}
