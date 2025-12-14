import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    super.key,
    required this.avatarUrl,
  });

  final String avatarUrl;


  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
        child: Column(
          children: [SizedBox(height: 8),
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
          ],
        ),
    );
  }
}
