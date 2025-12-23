import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key,});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if(_counter != 0) {
        _counter--;
      }});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'Scroll Up',
              backgroundColor: Colors.blue,
              child: const Icon(Icons.arrow_upward),
            ),
            const SizedBox(height: 20),
            const Text(
              'Video:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Scroll Down',
              backgroundColor: Colors.blue,
              child: const Icon(Icons.arrow_downward),
            ),
          ],
        ),
      );
  }
}