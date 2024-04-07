import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BodyApp());
}

class BodyApp extends StatelessWidget {
  const BodyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          elevation: 8,
          backgroundColor: Colors.red,
          title: Text(
            'Dados',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var diceNumber1 = 3;
  var diceNumber2 = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    diceNumber1 = Random().nextInt(6) + 1;
                    diceNumber2 = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$diceNumber1.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    diceNumber1 = Random().nextInt(6) + 1;
                    diceNumber2 = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$diceNumber2.png')),
          ),
        ],
      ),
    );
  }
}
