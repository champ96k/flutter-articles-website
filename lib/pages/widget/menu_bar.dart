import 'package:abstract_coder/pages/screen/home_page.dart';
import 'package:abstract_coder/pages/widget/menu_button.dart';
import 'package:abstract_coder/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuBar extends StatefulWidget {
  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.08,
      height: size.height,
      color: Theme.of(context).dialogBackgroundColor,
      child: Column(
        children: [
          SizedBox(
            height: 16.0,
          ),
          MenuButton(
            iconData: FontAwesomeIcons.book,
            text: Constant.homeText,
            ontab: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (c, a1, a2) => HomePage(),
                  transitionsBuilder: (c, anim, a2, child) => ScaleTransition(
                    child: child,
                    alignment: Alignment.topCenter,
                    scale: anim,
                  ),
                  // transitionDuration: Duration(milliseconds: 500),
                ),
              );
            },
          ),
          MenuButton(
            iconData: FontAwesomeIcons.medium,
            text: Constant.articlesText,
            ontab: () {
              //todo
            },
          ),
          MenuButton(
            iconData: FontAwesomeIcons.code,
            text: Constant.snippetsTexta,
            ontab: () {
              //todo
            },
          ),
          MenuButton(
            iconData: FontAwesomeIcons.search,
            text: Constant.searchText,
            ontab: () {
              //todo
            },
          ),
          MenuButton(
            iconData: FontAwesomeIcons.tag,
            text: Constant.tagsText,
            ontab: () {
              //todo
            },
          ),
        ],
      ),
    );
  }
}
