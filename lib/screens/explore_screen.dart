// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/reuseables/app_bar.dart';
import 'package:ecommerce/reuseables/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  static const String id = 'explore_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar('Explore', context),
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        padding: EdgeInsets.all(10),
        children: List.generate(
          10,
          (index) => index % 3 == 0
              ? Container(
                  height: 150,
                  color: Colors.indigo,
                )
              : Container(
                  height: 100,
                  color: Colors.black,
                ),
        ),
      ),
    );
  }
}
