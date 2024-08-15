import 'package:flutter/material.dart';

class Task {
  int id;
  String text;
  bool done = false;
  static int nextID = 0;
  Task({
    required this.id,
    required this.text
  });

  Task.add({required this.text}):id = nextID++;


}

