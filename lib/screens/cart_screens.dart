// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class CartScreen extends StatelessWidget {
  static const String id = 'cart_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your cart'),
        centerTitle: true,
      ),
    );
  }
}
