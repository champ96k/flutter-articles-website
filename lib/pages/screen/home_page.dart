import 'package:abstract_coder/pages/widget/content_page.dart';
import 'package:abstract_coder/pages/widget/menu_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Menu
              orientation == Orientation.portrait ? Container() : MenuBar(),
              // Content page
              ContentPage(),
            ],
          )),
    );
  }
}
