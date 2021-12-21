import 'package:flutter/material.dart';
import 'package:mashmart/models/product_model.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
    );
  }
}
