import 'package:abstract_coder/utils/constant.dart';
import 'package:abstract_coder/utils/style.dart';
import 'package:abstract_coder/widgets/theme_change.dart';
import 'package:flutter/material.dart';
import 'articals.dart';

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
 
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: Theme.of(context).dividerColor,
      width: orientation == Orientation.portrait ? size.width : size.width * 0.92,
      height: size.height,
      child: SingleChildScrollView(
        reverse: true,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChangeTheme(),
              SizedBox(
                height: size.height * 0.04,
              ),
              Wrap(
                children: [
                  Text(
                    Constant.abstractTitle,
                      textAlign: TextAlign.left, 
                      style: AppTheme.titleTheme
                    ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    Constant.abstractDesc,
                    style: TextStyle(
                      fontSize:
                          orientation == Orientation.portrait ? 16.0 : 18.0,
                      color: Theme.of(context).bottomAppBarColor,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              RichText(
                text: TextSpan(
                    text: Constant.learnSnippets,
                    style: TextStyle(
                      fontSize:
                          orientation == Orientation.portrait ? 16.0 : 22.0,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).accentColor,
                    ),
                    children: [
                      TextSpan(
                        text: Constant.viewAll,
                        style: TextStyle(
                          fontSize:
                              orientation == Orientation.portrait ? 14 : 16.0,
                          color: Colors.indigo,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),

              //content box
              Articals(),

              SizedBox(
                height: size.height * 0.06,
              ),

              Center(
                  child: Text(
                Constant.footerText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).bottomAppBarColor,
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
