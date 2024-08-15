import 'package:flutter/material.dart';

class gridWidget extends StatelessWidget {
  const gridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: 
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          //Squre Width == Height
          // width/height 1/2 2/1
          childAspectRatio: 1/2
          ),
          children: const [
            Text("data 1"),
            Text("data 1"),
            Text("data 1"),
            Text("data 1"),
            Text("data 1"),
            Text("data 1"),
            Text("data 1"),
            Text("data 1"),
            Text("data 1"),
            Text("data 1"),
            Text("data 1"),
            Text("data 1"),
            Text("data 1"),
            Text("data 1"),
            Text("data 1"),
          ],),
    );
  }
}