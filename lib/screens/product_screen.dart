// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/reuseables/app_bar.dart';
import 'package:ecommerce/reuseables/product_schema.dart';
import "package:flutter/material.dart";

class ProductScreen extends StatelessWidget {
  static const String id = 'product_screen';
  final String title;
  final String description;
  final int productId;
  final String url;

  const ProductScreen(
      {required this.title,
      required this.description,
      required this.productId,
      required this.url});

  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)!.settings.arguments as ProductArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Hero(
            tag: 'viewed-product$id',
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(url),
                  fit: BoxFit.cover,
                ),
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
