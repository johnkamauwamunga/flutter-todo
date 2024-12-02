import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Button Pressed"),
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                onPressed: _incrementCounter, child: Text("Increment"))
          ],
        ),
      ),
    );
  }
}
