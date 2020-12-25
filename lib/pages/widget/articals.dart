import 'package:abstract_coder/pages/widget/show_data.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Articals extends StatefulWidget {
  @override
  _ArticalsState createState() => _ArticalsState();
}

class _ArticalsState extends State<Articals> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference articals = FirebaseFirestore.instance.collection('articals');
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
      future: articals.doc("articals_data").get(),
      builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          //print("Response: $data");
          return ShowData(data: data);
        }
        return Center(
          child: Text("Loading..."),
        );
      },
    );
  }
}
