import 'package:flutter/material.dart';

import 'Product.dart';

class Cart {
  final Product product;
  final int numOfItem;

  Cart({required this.product, required this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
  Cart(product: mainProducts[0], numOfItem: 2),
  Cart(product: mainProducts[1], numOfItem: 1),
  Cart(product: mainProducts[3], numOfItem: 1),
  // Cart(product: mainProducts[4], numOfItem: 1),
];
