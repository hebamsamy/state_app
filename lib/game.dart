import 'dart:math';

import 'package:flutter/material.dart';
import 'package:state/const.dart';

class GameWidget extends StatefulWidget {
  const GameWidget({super.key});

  @override
  State<GameWidget> createState() => _GameWidgetState();
}

class _GameWidgetState extends State<GameWidget> {
  int index = 0;
  List<String> quotes = [
    "The only way to do great work is to love what you do.",
    "Success is not the key to happiness. Happiness is the key to success.",
    "The future belongs to those who believe in the beauty of their dreams.",
    "Believe you can and you're halfway there.",
    "Don't watch the clock; do what it does. Keep going.",
    "It does not matter how slowly you go as long as you do not stop.",
    "Success is not final, failure is not fatal: It is the courage to continue that counts.",
    "Hardships often prepare ordinary people for an extraordinary destiny.",
    "Start where you are. Use what you have. Do what you can.",
    "The best way to predict the future is to create it."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("My today Quote"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          Padding(
              padding:const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                quotes[index],
                textAlign: TextAlign.center,
                style: primaryText,
              )),
          OutlinedButton(
              onPressed: () {
                setState(() {
                  // index++;
                  // if(index==quotes.length)
                  //   index = 0;
                  index = Random().nextInt(quotes.length - 1);
                });
              },
              child: const Text("Get New Quote"))
        ],
      ),
    );
  }
}
