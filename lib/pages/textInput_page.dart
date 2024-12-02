import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  TextEditingController mycontroller = TextEditingController();

  String greetingMessage = "";

  void greetUser() {
    // print(mycontroller.text);

    setState(() {
      greetingMessage = "Hello " + mycontroller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage),
              TextField(
                controller: mycontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your name',
                ),
              ),
              ElevatedButton(onPressed: greetUser, child: Text("click"))
            ],
          ),
        ),
      ),
    );
  }
}
