// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import '../reuseables/custom_bottom_bar.dart';

class CollectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Collection',
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
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('Crazy ass button'),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
