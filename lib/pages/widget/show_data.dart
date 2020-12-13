import 'package:flutter/material.dart';

class ShowData extends StatelessWidget {
  final data;
  const ShowData({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final Size size = MediaQuery.of(context).size;
    var articalResponce = data['articals_info'];
    return GridView.builder(
      reverse: true,
      addAutomaticKeepAlives: true,  
      scrollDirection: Axis.vertical,
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: data['articals_info'].length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
        childAspectRatio: orientation == Orientation.portrait ? 0.52 : 0.74,
        crossAxisSpacing: size.width * 0.04,
        mainAxisSpacing: size.width * 0.03,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 3.5,
          shadowColor: Colors.grey,
          // ignore: deprecated_member_use
          color: Theme.of(context).cursorColor,
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
                    image: NetworkImage("${articalResponce[index]['imageurl']}"),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 6.0, vertical: 4.0),
                  child: Text(
                    "${articalResponce[index]['title']}",
                    overflow: TextOverflow.ellipsis,
                    maxLines: orientation == Orientation.portrait ? 1 : 2,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 6.0, vertical: 4.0),
                    child: Text(
                      "${articalResponce[index]['desc']}",
                      overflow: TextOverflow.ellipsis,
                      maxLines: orientation == Orientation.portrait ? 1 : 2,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Theme.of(context).bottomAppBarColor,
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 12,
                              ),
                              Text(
                                "  ${articalResponce[index]['time']}",
                                style: TextStyle( 
                                  fontSize: 12.0,
                                  color: Theme.of(context).bottomAppBarColor,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today,
                                size: 12,
                                color: Theme.of(context).bottomAppBarColor,
                              ),
                              Text(
                                "  ${articalResponce[index]['date']}",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).bottomAppBarColor,
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
      },
    );
  }
}
