import 'package:flutter/cupertino.dart';
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
        appBar: AppBar(
          title: Text('Example Stack and Align'),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Spacer(
                flex: 1,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.red,
              ),
              Spacer(
                flex: 2,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.green,
              ),
              Spacer(
                flex: 2,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.blue,
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
