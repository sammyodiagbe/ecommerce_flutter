// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/reuseables/app_bar.dart';
import "package:flutter/material.dart";
import '../reuseables/custom_bottom_bar.dart';

class CollectionScreen extends StatelessWidget {
  static const String id = 'collections_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar('Collections', context),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          buildCategory(Colors.green, 'Children'),
          SizedBox(height: 30),
          buildCategory(Colors.orange, 'Men'),
          SizedBox(height: 30),
          buildCategory(Colors.indigo, 'Women'),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

Widget buildCategory(Color containerColor, String text) {
  return Container(
    padding: EdgeInsets.all(8),
    height: 250,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: containerColor,
    ),
    child: Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Positioned(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(100),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            bottom: 15,
          ),
        )
      ],
    ),
  );
}
