import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuButton extends StatelessWidget {
  final String text;
  final IconData iconData;

  const MenuButton({Key key, @required this.text,@required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.08, 
      height: MediaQuery.of(context).size.height*0.13,    
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center, 

          children: <Widget>[
            FaIcon(
              iconData,
              size: 28,   
              color: Colors.black,
            ), 
            Text(
              text,
            ),
          ],
        ), 
    );
  }
}
