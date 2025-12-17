import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: UI());
  }
}

class UI extends StatelessWidget {

  const UI({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Profile'),
        centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsetsDirectional.all(20),
          child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.25),
                blurRadius: 2,
                spreadRadius: 0.2,
                offset: const Offset(0, 4),
              ),
            ],
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),

              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  "https://img.freepik.com/free-photo/close-up-portrait-lion_23-2150496589.jpg", // example working image URL
                ),
              ),



            

            const SizedBox(height: 16),
            const Text(
              "Kunal Chandra Poddar",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 6),


            const Text(
              "Kunal@gmail.com",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 30),

          
            buildInfoCard(Icons.group, 'Followers', '1200'),
            buildInfoCard(Icons.person_add, 'Following', '350'),
            buildInfoCard(Icons.article, 'Posts', '48'),

            const SizedBox(height: 6),


            SizedBox(
              height: 65.0,
              width: double.infinity,
    
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  backgroundColor: Colors.blue,
                ),
                child: const Text(
                  "Edit Profile",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    ),);
  }

  Widget buildInfoCard(IconData icon, String title, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 0.5,
            spreadRadius: 0.2,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon,
          size: 32,
          color: Colors.grey),
          const SizedBox(width: 20),
          Text(title, style: const TextStyle(fontSize: 24)),
          const Spacer(),
          Text(
            value,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ]
      )
    );
  }
}