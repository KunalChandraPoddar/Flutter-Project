import 'package:flutter/material.dart';
import 'package:flutter_application_6/widgets2/subscription_tab.dart';
import 'button.dart';
import 'home_tab.dart';
import 'shorts_tab.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeTab(),
    ShortsTab(),
    Center(child: Text("Add")),
    SubscriptionsTab(),
    Center(child: Text("Me")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],

      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: const BoxDecoration(
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

              BadgeExample(
                icon: Icons.home,
                label: 'Home',
                s: 26,
                onTap: () => setState(() => _currentIndex = 0),
              ),

              BadgeExample(
                icon: Icons.play_circle,
                label: 'Shorts',
                s: 26,
                onTap: () => setState(() => _currentIndex = 3),
              ),

              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 182, 180, 180),
                      blurRadius: 1,
                    ),
                  ],
                ),
                child: BadgeExample(
                  icon: Icons.add,
                  s: 40,
                  onTap: () => setState(() => _currentIndex = 2),
                ),
              ),

              BadgeExample(
                icon: Icons.subscriptions,
                label: 'Subscriptions',
                s: 26,
                onTap: () => setState(() => _currentIndex = 1),
              ),

              BadgeExample(
                icon: Icons.smart_display,
                label: 'Me',
                s: 26,
                onTap: () => setState(() => _currentIndex = 4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
