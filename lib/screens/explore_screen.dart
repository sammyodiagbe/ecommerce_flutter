// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/reuseables/app_bar.dart';
import 'package:ecommerce/reuseables/custom_bottom_bar.dart';
import 'package:ecommerce/reuseables/product_schema.dart';
import 'package:ecommerce/screens/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExploreScreen extends StatelessWidget {
  static const String id = 'explore_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar('Explore', context),
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3,
                child: Tile(0, context),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Tile(1, context),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(2, context),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3,
                child: Tile(3, context),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Tile(4, context),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(6, context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Tile(int index, BuildContext context) {
  final url = 'https://picsum.photos/id/$index/200/300';

  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed(
        ProductScreen.id,
        arguments: ProductArguments(
            'Product $index',
            'Some products would be different, but this is just gonna be used to add description to each product so that is how we are gonna do this.',
            index,
            url),
      );
    },
    child: Hero(
      tag: 'viewed-product$index',
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(url),
            fit: BoxFit.fill,
          ),
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            index.toString(),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}
