import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Aplikasi Hello WOrld"),
          ),
          body: Center(
            child: Container(
              color: Colors.lightBlue,
              width: 150,
              height: 50,
              child: Text("Hello world!"),
            ),
          ),
        ));
  }
}
