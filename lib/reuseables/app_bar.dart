// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

AppBar AppAppBar(String title) {
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
        onPressed: () {},
      ),
      SizedBox(
        width: 15,
      )
    ],
    centerTitle: true,
  );
}
