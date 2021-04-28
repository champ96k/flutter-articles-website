import 'package:abstract_coder/utils/constant.dart';
import 'package:abstract_coder/utils/style.dart';
import 'package:abstract_coder/widgets/theme_change.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class DetailsData extends StatelessWidget {
  final response;
  const DetailsData({Key key, this.response}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    return Container(
      width:
          orientation == Orientation.portrait ? size.width : size.width * 0.92,
      height: size.height,
      child: SingleChildScrollView(
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
                      color: Colors.white.withOpacity(0.6),
                      offset: Offset(-3.0, -3.0),
                      blurRadius: 16.0,
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.6),
                      offset: Offset(6.0, 6.0),
                      blurRadius: 16.0,
                    ),
                  ],
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: CachedNetworkImage(
                      imageUrl: response['imageurl'],
                      fit: orientation == Orientation.portrait
                          ? BoxFit.fitWidth
                          : BoxFit.cover,
                      errorWidget: (context, url, error) => Image(
                        width: size.width,
                        fit: orientation == Orientation.portrait
                            ? BoxFit.fitWidth
                            : BoxFit.cover,
                        image: AssetImage(Constant.testImage),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              Card(
                elevation: 0.0,
                color: Theme.of(context).dialogBackgroundColor,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Html(
                    data: response['desc'],
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
