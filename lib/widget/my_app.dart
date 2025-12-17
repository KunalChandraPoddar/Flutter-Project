import 'package:flutter/material.dart';
import 'package:flutter_application_9/widget/first_screen.dart';
import 'package:flutter_application_9/widget/second_screen.dart';
import 'my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      routes: {
        '/FirstScreen' : (BuildContext context) => const FirstScreen('ok', title: 'Home Page'),
        '/SecondScreen' : (BuildContext context) => const SecondScreen('ok', title: 'Shorts Page'),
        },
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Youtube")),
        body: const Center(child: MyHomePage('ok' ,title: 'Home Page')),
      ),
    );
  }
}