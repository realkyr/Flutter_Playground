import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  final int _counter;

  CounterDisplay(this._counter);
  
  @override
  Widget build(BuildContext context) {
    return Text(_counter.toString());
  }
}