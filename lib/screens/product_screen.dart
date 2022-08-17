// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/reuseables/app_bar.dart';
import "package:flutter/material.dart";

class ProductScreen extends StatelessWidget {
  static const String id = 'product_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar('Some title go here', context),
      body: ListView(
        children: [
          Hero(
            tag: 'viewed-product',
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.indigo,
              ),
            ),
          )
        ],
      ),
    );
  }
}
