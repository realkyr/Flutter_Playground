import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './Product.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {

  List<String> products = [];
  TextEditingController text = new TextEditingController();

  void handleButton() {
    setState(() {
      products.add(text.text);
      text.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.all(10),
        child: CupertinoButton(
          child: Text('Add Product'),
          onPressed: () {
            handleButton();
          },
        ),
      ),
      Container(
          margin: EdgeInsets.all(10),
          child: CupertinoTextField(
            decoration: BoxDecoration(
              border: Border.all(
                style: BorderStyle.none
              )
            ),
            placeholder: 'Please enter a item\'s name',
            controller: text,
        )
      ),
      Expanded(
        child: Product(products),
      )
    ]);
  }
}
