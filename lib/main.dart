import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Hello World",
    home: Counter(),
  ));
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RaisedButton(
          onPressed: _increment,
          child: Text("Increment"),
        ),
        Text('Counter: $_counter')
      ],
    );
  }

  void _increment() {
    setState(() {
      _counter++;
    });
  }
}
