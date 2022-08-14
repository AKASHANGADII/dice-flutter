import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title:"Dice",
      home: Scaffold(
        backgroundColor: Colors.red[600],
        appBar: AppBar(
          backgroundColor: Colors.red[600],
          title: Center(
            child: Text('DICE'),
          ),
        ),
        body: BodyPage(),
      ),
    ),
  );
}

class BodyPage extends StatefulWidget {
  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  var diceNum1 = 1;
  var diceNum2 = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    diceNum1 = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$diceNum1.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    diceNum2 = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$diceNum2.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
