import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDiceFace = Random().nextInt(6) + 1,
      rightDiceFace = Random().nextInt(6) + 1;

  void _changeNumber() {
    setState(() {
      leftDiceFace = Random().nextInt(6) + 1;
      rightDiceFace = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FlatButton(
            child:
                Image.asset('assets/images/dice-six-faces-$rightDiceFace.png'),
            onPressed: _changeNumber,
          ),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FlatButton(
            child:
                Image.asset('assets/images/dice-six-faces-$leftDiceFace.png'),
            onPressed: _changeNumber,
          ),
        ))
      ],
    );
  }
}
