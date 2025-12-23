import 'package:flutter/material.dart';

class ContactGridImages extends StatelessWidget {
  ContactGridImages({super.key});

  final List<Map<String, String>> contacts = [
    {
      "name": "Amit",
      "image": "https://picsum.photos/200?1",
    },
    {
      "name": "Rahul",
      "image": "https://picsum.photos/200?2",
    },
    {
      "name": "Neha",
      "image": "https://picsum.photos/200?3",
    },
    {
      "name": "Priya",
      "image": "https://picsum.photos/200?4",
    },
    {
      "name": "Amit",
      "image": "https://picsum.photos/200?1",
    },
    {
      "name": "Rahul",
      "image": "https://picsum.photos/200?2",
    },
    {
      "name": "Neha",
      "image": "https://picsum.photos/200?3",
    },
    {
      "name": "Priya",
      "image": "https://picsum.photos/200?4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.builder(
        itemCount: contacts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 6,
          crossAxisSpacing: 4,
          childAspectRatio: 0.55,
        ),
        itemBuilder: (context, index) {
          final contact = contacts[index];

          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(14),
                  ),
                  child: Image.network(
                    contact["image"]!,
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: 8),

                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        contact["name"]!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "This is '${contact["name"]}'s image.",
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
