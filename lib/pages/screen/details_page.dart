import 'package:abstract_coder/pages/widget/details_data.dart';
import 'package:abstract_coder/pages/widget/menu_bar.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final response;

  const DetailsPage({Key key, this.response}) : super(key: key);
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Menu
            orientation == Orientation.portrait ? Container() : MenuBar(),
            // Content page
            DetailsData(
              response: widget.response,
            ),
          ],
        ),
      ),
    );
  }
}
