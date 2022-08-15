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
      body: Column(
        children: [],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
