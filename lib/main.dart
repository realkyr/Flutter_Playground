import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './ProductManager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text("FirstApp"),
        ),
        body: ProductManager()
        ),
      );
  }
}
