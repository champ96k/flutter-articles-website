import 'package:abstract_coder/utils/constant.dart';
import 'package:abstract_coder/utils/style.dart';
import 'package:abstract_coder/widgets/theme_change.dart';
import 'package:flutter/material.dart';

class DetailsData extends StatelessWidget {
  final response;
  const DetailsData({Key key, this.response}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    return Container(
      width: orientation == Orientation.portrait ? size.width : size.width * 0.92,
      height: size.height,
      child: SingleChildScrollView(
        reverse: true,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.08, vertical: size.width * 0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ChangeTheme(),
              SizedBox(
                height: size.height * 0.04,
              ),
              Wrap(
                children: [
                  Text(response['title'],
                      textAlign: TextAlign.left, style: AppTheme.titleTheme),
                ],
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.8),
                      offset: Offset(-6.0, -6.0),
                      blurRadius: 16.0,
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(6.0, 6.0),
                      blurRadius: 16.0,
                    ),
                  ],
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Image.asset(Constant.testImage),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              Card(
                elevation: 0.0,
                color: Theme.of(context).dialogBackgroundColor,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    response['desc'],
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Theme.of(context).bottomAppBarColor,
                    ),
                  ),
                ),
              ),
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
