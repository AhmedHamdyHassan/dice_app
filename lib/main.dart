import './dice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice',
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.red,
            appBar: AppBar(
              backgroundColor: Colors.red,
              title: Text('Dice'),
            ),
            body: Center(
              child: Dice(),
            )),
      ),
    );
  }
}
