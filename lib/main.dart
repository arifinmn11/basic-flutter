import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        // appBar: AppBar(
        //   title: Text('Example Card View'),
        // ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.account_box, 'Account Box'),
              buildCard(Icons.settings, 'Setting'),
              buildCard(Icons.adb, 'Serangga Android')
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            child: Icon(iconData),
          ),
          Text(text),
        ],
      ),
    );
  }
}
