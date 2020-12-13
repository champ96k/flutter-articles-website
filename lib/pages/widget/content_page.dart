import 'package:abstract_coder/utils/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'articals.dart';

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  bool _isdark = false;
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: Theme.of(context).dividerColor,
      width:
          orientation == Orientation.portrait ? size.width : size.width * 0.92,
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
              
              Consumer<ThemeNotifier>(
                builder: (context, theme, _) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Card(
                      elevation: 1.75,
                      shadowColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0), 
                      ),
                      color: Theme.of(context).errorColor,
                      child: Container(
                        height: size.height * 0.055,
                        width: size.width * 0.05, 
                        alignment: Alignment.center,
                        child: IconButton(
                          icon: _isdark
                              ? Icon(
                                  Icons.brightness_5,
                                  size: 22,
                                )
                              : Icon(
                                  Icons.brightness_4,
                                  size: 22,
                                ),
                          onPressed: () {
                            _isdark = !_isdark;
                            print("Status: $_isdark");
                            _isdark
                                ? theme.setDarkMode()
                                : theme.setLightMode();
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Wrap(
                children: [
                  Text(
                    "Learn to Produce \nProduction Level Code",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 52.0,
                      // color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Abstract Coder is an ecosystem of practical resources for developers who want to build high-quality web & mobile apps.",
                    style: TextStyle(
                      fontSize: 
                          orientation == Orientation.portrait ? 16.0 : 20.0,
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
                    text: "Latest Snippets  ",
                    style: TextStyle(
                      fontSize:
                          orientation == Orientation.portrait ? 22.0 : 32.0,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).accentColor,
                    ),
                    children: [
                      TextSpan(
                        text: " View All",
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
                "Copyright © 2020. \nCreated and presented by Tushar Nikam",
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
