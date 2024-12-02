import 'package:flutter/material.dart';
import 'pages/todo_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: TodoPage(), theme: ThemeData(primaryColor: Colors.yellow));
  }
}
