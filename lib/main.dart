import 'package:flutter/material.dart';
import './CounterControl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                'My First App',
                textAlign: TextAlign.center,
              ),
            ),
            body: CounterControl()
          )
        );
  }
}
