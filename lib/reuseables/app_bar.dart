// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/screens/cart_screens.dart';
import "package:flutter/material.dart";

AppBar AppAppBar(String title, BuildContext context) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    leading: Icon(Icons.apps),
    actions: [
      IconButton(
        icon: Icon(Icons.shopping_cart_outlined),
        onPressed: () {
          Navigator.pushNamed(context, CartScreen.id);
        },
      ),
      SizedBox(
        width: 15,
      )
    ],
    centerTitle: true,
  );
}
