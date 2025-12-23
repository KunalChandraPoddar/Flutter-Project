import 'package:flutter/material.dart';
import 'package:flutter_application_6/widgets/profile_screen.dart';
import 'package:flutter_application_6/widgets/contacts.dart';

class ContactTab extends StatelessWidget {
  const ContactTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Contact> contacts = [
      Contact(
        name: 'A Siba Redeemer',
        imageUrl: 'https://i.pravatar.cc/150?img=1',
        email: 'asiba.redeemer@example.com',
      ),
      Contact(
        name: 'Abhineet Kumar Jha (BCET)',
        imageUrl: 'https://i.pravatar.cc/150?img=2',
        email: 'abhineet.jha@example.com',
      ),
      Contact(
        name: 'Abhiranjan Poddar',
        imageUrl: 'https://i.pravatar.cc/150?img=3',
        email: 'abhiranjan.poddar@example.com',
      ),
      Contact(
        name: 'Abhiranjan Poddar',
        imageUrl: 'https://i.pravatar.cc/150?img=3',
        email: 'abhiranjan.poddar@example.com',
      ),
      Contact(
        name: 'Abhiranjan Poddar',
        imageUrl: 'https://i.pravatar.cc/150?img=3',
        email: 'abhiranjan.poddar@example.com',
      ),
      Contact(
        name: 'Abhiranjan Poddar',
        imageUrl: 'https://i.pravatar.cc/150?img=3',
        email: 'abhiranjan.poddar@example.com',
      ),
      Contact(
        name: 'Abhiranjan Poddar',
        imageUrl: 'https://i.pravatar.cc/150?img=3',
        email: 'abhiranjan.poddar@example.com',
      ),
      Contact(
        name: 'Abhiranjan Poddar',
        imageUrl: 'https://i.pravatar.cc/150?img=3',
        email: 'abhiranjan.poddar@example.com',
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF1F3F4),
      appBar: AppBar(title: const Text('Contacts'), elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          child: ListView.separated(
            itemCount: contacts.length,
            separatorBuilder: (_, __) => Container(
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 0.5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                ),

            itemBuilder: (context, index) {
              return _GoogleContactTile(
                contact: contacts[index],
                isFirst: index == 0,
              );
            },
          ),
        ),
      ),
    );
  }
}

class _GoogleContactTile extends StatelessWidget {
  final Contact contact;
  final bool isFirst;

  const _GoogleContactTile({
    required this.contact,
    required this.isFirst,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProfileScreen(
              name: contact.name,
              imageUrl: contact.imageUrl,
              email: contact.email,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: isFirst
              ? const BorderRadius.vertical(top: Radius.circular(16))
              : BorderRadius.zero,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.network(
                contact.imageUrl,
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                contact.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

