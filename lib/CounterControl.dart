import 'package:flutter/material.dart';
import './CounterDisplay.dart';

class CounterControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterControlState();
  }
}

class _CounterControlState extends State<CounterControl> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
              children: <Widget>[
                Center(child: CounterDisplay(_counter)),
                FloatingActionButton(
                  child: Text('+'),
                  onPressed: () {
                    setState(() {
                      _counter += 1;
                    });
                  },
                )
              ],
            );
  }
}