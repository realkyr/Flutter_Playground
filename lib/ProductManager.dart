import 'package:flutter/material.dart';
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
        child: RaisedButton(
          child: Text('Add Product'),
          onPressed: () {
            handleButton();
          },
        ),
      ),
      Container(
          margin: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Please enter a item\'s name'
            ),
            controller: text,
        )
      ),
      Expanded(
        child: Product(products),
      )
    ]);
  }
}
