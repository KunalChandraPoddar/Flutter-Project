import 'package:flutter/material.dart';
import 'button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage(String s, {super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Contents'),
      ),

      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
              ),
            ],
          ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [      
            BadgeExample(nav: '/FirstScreen', icon: Icons.home, label: 'Home',),
            BadgeExample(nav: '/SecondScreen', icon: Icons.play_circle, label: 'Shorts',),
            BadgeExample(nav: "Add", icon: Icons.add, label: 'Add',),
            BadgeExample(nav: 'Subscriptions', icon: Icons.subscriptions, label: 'Subscriptions',),
            BadgeExample(nav: 'Me', icon: Icons.smart_display, label: 'Me',),
          ],
        ),
      ),
    ),);
  }
}
