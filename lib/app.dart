import 'package:flutter/material.dart';
import 'widget/profile_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Demo',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
