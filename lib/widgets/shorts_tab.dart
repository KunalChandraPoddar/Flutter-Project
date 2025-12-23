import 'package:flutter/material.dart';

class ShortsTab extends StatefulWidget {
  const ShortsTab({super.key,});
  @override
  State<ShortsTab> createState() => _ShortsTabState();
}

class _ShortsTabState extends State<ShortsTab> {
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
          children: [
            FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'Increment',
              backgroundColor: Colors.blue,
              child: const Icon(Icons.arrow_upward),
            ),
            const SizedBox(height: 20),
            const Text(
              'Shorts Watched:',
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
            child: const Icon(Icons.arrow_downward),)
          ],
        ),
      );
  }
}