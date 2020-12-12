import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'menu_button.dart';

class MenuBar extends StatefulWidget {
  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.08,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        children: [

           SizedBox(
                height: 16.0,     
              ), 

          MenuButton(
            iconData: FontAwesomeIcons.book,   
            text: "Home", 
          ),

           MenuButton(
            iconData: FontAwesomeIcons.medium, 
            text: "Articles", 
          ), 

          MenuButton(
            iconData: FontAwesomeIcons.code,
            text: "Snippets",
          ),

          MenuButton(
            iconData: FontAwesomeIcons.search, 
            text: "Search",
          ),

          MenuButton(
            iconData: FontAwesomeIcons.tag,  
            text: "Tags", 
          ), 

          
        ],
      ),
    );
  }
}
