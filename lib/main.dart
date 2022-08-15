// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/screens/collection_screen.dart';
import 'package:ecommerce/screens/explore_screen.dart';
import "package:flutter/material.dart";

void main() {
  runApp(EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        CollectionScreen.id: (context) => CollectionScreen(),
        ExploreScreen.id: (context) => ExploreScreen()
      },
      home: CollectionScreen(),
      theme: ThemeData(
        fontFamily: 'Josefin',
        appBarTheme: AppBarTheme.of(context).copyWith(
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary: Colors.black,
          onPrimary: Colors.white,
          padding: EdgeInsets.all(15),
        )),
        primaryColor: Colors.indigo,
        colorScheme: ColorScheme(
          background: Colors.pink,
          primary: Colors.white,
          secondary: Colors.blue,
          surface: Colors.purpleAccent,
          error: Colors.red,
          onPrimary: Colors.black,
          onSecondary: Colors.white,
          onSurface: Colors.teal,
          onBackground: Colors.blue,
          onError: Colors.redAccent,
          brightness: Brightness.light,
        ),
      ),
    );
  }
}
