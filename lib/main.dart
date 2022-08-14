import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Diceee());
}

class Diceee extends StatefulWidget {
  const Diceee({Key? key}) : super(key: key);

  @override
  State<Diceee> createState() => _DiceeeState();
}

class _DiceeeState extends State<Diceee> {
  int diceNumber1 = Random().nextInt(6) + 1;
  int diceNumber2 = Random().nextInt(6) + 1;
  void changeDiceFace() {
    setState(
      () {
        diceNumber1 = Random().nextInt(6) + 1;
        diceNumber2 = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text('Dicee'),
          ),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image(
                    image: AssetImage('images/dice$diceNumber1.png'),
                  ),
                ),
              ),
              Expanded(
                  child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image(
                  image: AssetImage('images/dice$diceNumber2.png'),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
