import 'package:flutter/material.dart';
import 'package:state/models/task.dart';
import 'package:state/taskWidget.dart';

class TodoListWidget extends StatefulWidget {
  const TodoListWidget({super.key});

  @override
  State<TodoListWidget> createState() => _TodoListWidget();
}

class _TodoListWidget extends State<TodoListWidget> {
  List<Task> myTasks = [
    Task.add(text: "Study Dart basic"),
    Task.add(text: "Study Dart OOP"),
    Task.add(text: "Study Flutter basic"),
    Task.add(text: "Study Stateless widget"),
    Task.add(text: "Study Statefull Widget"),
  ];
  toggle(int id) {
    setState(() {
      myTasks.forEach((item) {
        if (item.id == id) item.done = !item.done;
      });
    });
  }
  add(String text){
    setState(() {
      myTasks.add(Task.add(text: text));
    });
  }

  delete(int id) {
        // print("in Parent");

    setState(() {
      myTasks.removeWhere((item) => item.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My To Do List"),
        actions: [
          IconButton(onPressed: (){
            add("text");
          }, icon: Icon(Icons.add))
        ],
      ),
      body: ListView(
        //Convert List<Task> to List<Widget = TaskWidget>
        children: myTasks
            .map((element) => TaskWidget(
                  currentTask: element,
                  onDeletePressed: delete,
                  onTogglePressed: toggle,
                ))
            .toList(),
      ),

    );
  }
}
