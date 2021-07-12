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
        title: Text('Latihan membuat Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(
                color: Colors.orangeAccent,
                child: Text('Button'),
                shape: StadiumBorder(),
                onPressed: () {}),
            Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      colors: [Colors.purple, Colors.pink],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    splashColor: Colors.amber,
                    onTap: () {},
                    child: Center(
                        child: Text(
                      'My Button',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
