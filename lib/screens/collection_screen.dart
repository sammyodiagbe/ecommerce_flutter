// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/reuseables/app_bar.dart';
import "package:flutter/material.dart";
import '../reuseables/custom_bottom_bar.dart';

class CollectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar('Collections'),
      body: Column(
        children: [],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
