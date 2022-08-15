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
    );
  }
}
