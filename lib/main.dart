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
            title: Text("Aplikasi Text Style"),
          ),
          body: Center(
            child: Text(
              "Ini adalah sebuah text",
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.none,
                  decorationStyle: TextDecorationStyle.double),
            ),
          ),
        ));
  }
}
