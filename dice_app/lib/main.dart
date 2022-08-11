import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Dicee",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: const DiceeApp(),
      ),
    );
  }
}

class DiceeApp extends StatefulWidget {
  const DiceeApp({Key? key}) : super(key: key);

  @override
  _DiceeAppState createState() => _DiceeAppState();
}

class _DiceeAppState extends State<DiceeApp> {
  int leftDiceButton = 2;
  int rightDiceButton = 3;

  void diceFace() {
    setState(() {
      leftDiceButton = Random().nextInt(6) + 1;
      rightDiceButton = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                diceFace();
              },
              child: Image.asset('images/dice$leftDiceButton.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                diceFace();
              },
              child: Image.asset('images/dice$rightDiceButton.png'),
            ),
          ),
        ],
      ),
    );
  }
}
