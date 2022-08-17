// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/reuseables/app_bar.dart';
import 'package:ecommerce/reuseables/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExploreScreen extends StatelessWidget {
  static const String id = 'explore_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar('Explore', context),
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: GridView.custom(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverWovenGridDelegate.count(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          pattern: [
            WovenGridTile(1),
            WovenGridTile(
              5 / 7,
              crossAxisRatio: 0.9,
              alignment: AlignmentDirectional.centerEnd,
            ),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) => Tile(index),
        ),
      ),
    );
  }
}

Widget Tile(int index) {
  return Container(
    color: Colors.orange,
    child: Center(
      child: Text(index.toString()),
    ),
  );
}
