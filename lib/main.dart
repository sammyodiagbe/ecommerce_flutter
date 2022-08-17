// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/reuseables/product_schema.dart';
import 'package:ecommerce/screens/cart_screens.dart';
import 'package:ecommerce/screens/collection_screen.dart';
import 'package:ecommerce/screens/explore_screen.dart';
import 'package:ecommerce/screens/product_screen.dart';
import "package:flutter/material.dart";

void main() {
  runApp(EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: {
      //   CollectionScreen.id: (context) => CollectionScreen(),
      //   ExploreScreen.id: (context) => ExploreScreen(),
      //   CartScreen.id: (context) => CartScreen(),
      // },
      initialRoute: CollectionScreen.id,
      onGenerateRoute: RouteGenerator.generateRoutes,
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
          ),
        ),
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

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final name = settings.name;
    switch (name) {
      case CollectionScreen.id:
        return MaterialPageRoute(builder: (_) => CollectionScreen());
      case ExploreScreen.id:
        return MaterialPageRoute(builder: (_) => ExploreScreen());
      case CartScreen.id:
        return MaterialPageRoute(builder: (_) => CartScreen());
      case ProductScreen.id:
        final args = settings.arguments as ProductArguments;
        return MaterialPageRoute(
          builder: (context) {
            return ProductScreen(
                title: args.title,
                description: args.description,
                productId: args.id,
                url: args.url);
          },
        );
      default:
        return MaterialPageRoute(
          builder: (_) {
            return Scaffold(
              appBar: AppBar(
                title: Text('Something broke'),
              ),
            );
          },
        );
    }
  }
}

// onGenerateRoute: (settings) {
//         if (settings.name == ProductScreen.id) {
//           final args = settings.arguments as ProductArguments;

//           
//         }
//       },
