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
        home: Scaffold(
          appBar: AppBar(
            title: Text("Aplikasi Hello World"),
          ),
          body: Center(
            child: Container(
              color: Colors.lightBlue,
              width: 150,
              height: 50,
              child: Text(
                "Saya sedang melatih kemmapuan saya menggunakan flutter!!",
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
        ));
  }
}
