import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.yellow,
          appBar: AppBar(
            title: Text("My App"),
            backgroundColor: Colors.deepPurple,
            elevation: 0,
            leading: Icon(Icons.home),
          ),
          body: Center(
              child: Container(
            height: 200,
            width: 300,
            // color: Colors.deepPurple,
            decoration: BoxDecoration(
              color: Colors.deepPurple, // Move color her
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 64,
            ),
          ))),
    );
  }
}
