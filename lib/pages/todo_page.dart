import 'package:flutter/material.dart';
import '../utils/todo_tile.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  TextEditingController mycontroller = TextEditingController();

  List todolist1 = [
    ['fly to Bali', true],
    ['Try Chicken pizza', false],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todolist1[index][1] = !todolist1[index][1];
    });
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          title: Text("T O D O"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewTask,
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: todolist1.length,
          itemBuilder: (context, index) {
            return TodoList(
              taskName: todolist1[index][0],
              taskCompleted: todolist1[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
            );
          },
        ));
  }
}
