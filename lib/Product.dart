import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final List<String> products;
  Product(this.products);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: products
          .map((el) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text(el)],
                ),
              ))
          .toList(),
    );
  }
}
