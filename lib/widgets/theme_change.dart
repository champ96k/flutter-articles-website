import 'package:abstract_coder/utils/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeTheme extends StatefulWidget {
  @override
  _ChangeThemeState createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  bool _isdark = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Consumer<ThemeNotifier>(
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
                  _isdark ? theme.setDarkMode() : theme.setLightMode();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
