import 'package:flutter/material.dart';
import 'profile_main.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.name, required this.imageUrl, required this.email,});

  final String name;
  final String imageUrl;
  final String email;

  static const avatarUrl = 'https://img.freepik.com/free-photo/close-up-portrait-lion_23-2150496589.jpg';

  @override
  Widget build(BuildContext context) {
    // const TextStyle nameStyle = TextStyle(
    //   fontSize: 22,
    //   fontWeight: FontWeight.bold,
    // );
    // const TextStyle subtitleStyle = TextStyle(
    //   fontSize: 16,
    //   color: Colors.grey,
    // );
    
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(title: const Text('Profile')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Center(  
            child: Contents(avatarUrl: imageUrl, name: name, email: email,), 
          ),
        ),
      ),
    );
  }
}