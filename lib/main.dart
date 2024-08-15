import 'package:flutter/material.dart';
import 'package:state/game.dart';
import 'package:state/grid.dart';
import 'package:state/todolist.dart';

void main() {
  runApp(
    MaterialApp(
      home: gridWidget(),
      debugShowCheckedModeBanner: false,
    )
  );
}
