import 'package:flutter/material.dart';

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
      color: Color(0xffF5F5F5),
      width:
          orientation == Orientation.portrait ? size.width : size.width * 0.92,
      height: size.height,
      child: SingleChildScrollView(
        primary: true,
        reverse: true,
        physics: ScrollPhysics(), 
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.04,
              ),
              Wrap(
                children: [
                  Text(
                    "Learn to Produce \nProduction Level Code",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: orientation == Orientation.portrait ? 32.0: 52.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Tutorials are the written versions of video tutorials. It covers one topic in around 15 minutes and can be expected regularly.",
                    style: TextStyle(
                      fontSize:orientation == Orientation.portrait ?16.0 : 20.0,
                      color: Colors.black87,
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
                      fontSize:orientation == Orientation.portrait ? 22.0 : 32.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: " View All",
                        style: TextStyle(
                          fontSize:orientation == Orientation.portrait ? 14: 16.0,
                          color: Colors.indigo,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              GridView.count(
                shrinkWrap: true,
                reverse: true,
                addAutomaticKeepAlives: true,
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
                childAspectRatio:orientation == Orientation.portrait ? 0.52:  0.74,  
                crossAxisSpacing: size.width * 0.04, 
                mainAxisSpacing: size.width * 0.03,
                children: List.generate(11, (index) {
                  return Card(
                    elevation: 3.5,
                    shadowColor: Colors.grey,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 4,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://i.pinimg.com/originals/50/ec/f0/50ecf05e539ed385862a85935951c6f6.jpg"),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6.0, vertical: 4.0),
                            child: Text(
                              "Widget tricks - Create movable Stack widgets Create movable Create movable Stack widgets Create movable  Stack widgets ",
                              overflow: TextOverflow.ellipsis,
                              maxLines:
                                  orientation == Orientation.portrait ? 1 : 2,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6.0, vertical: 4.0),
                              child: Text(
                                "Getting your location in Flutter is an easy task. This tutorial will  Flutter is an easy task. This tutorial w show you how t",
                                overflow: TextOverflow.ellipsis,
                                maxLines:
                                    orientation == Orientation.portrait ? 1 : 2,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                              ),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          size: 12,
                                          color: Colors.black45,
                                        ),
                                        Text(
                                          "  3 minute",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black45,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_today,
                                          size: 12,
                                          color: Colors.black54,
                                        ),
                                        Text(
                                          "  13 December 2020",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                  );
                }),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              Center(
                  child: Text(
                "Copyright © 2020. \nCreated and presented by Tushar Nikam",
                textAlign: TextAlign.center,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
