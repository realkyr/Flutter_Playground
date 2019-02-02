import 'package:flutter/material.dart';
import './Product.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: RaisedButton(
                child: Text('Add Product'),
                onPressed: () {
                  setState(() {
                    products.add('Advance Food Tester');
                  });
                  print(products);
                },
              ),
            ),
            Product(products)
          ]
    );
  }
}