// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

const double _iconSize = 30;

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBar();
}

class _CustomBottomNavigationBar extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28,
      ),
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home_outlined,
                size: _iconSize,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person_outline,
                size: _iconSize,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings_outlined,
                size: _iconSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
