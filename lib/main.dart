
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Media Query'),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.landscape
              ? Column(children: generateContainers())
              : Row(
                  children: generateContainers(),
                )

          // color: Colors.red,
          // width: MediaQuery
          //     .of(context)
          //     .size
          //     .width / 2,
          // height: MediaQuery
          //     .of(context)
          //     .size
          //     .height / 2,
          ),
    );
  }
}

List<Widget> generateContainers() {
  return <Widget>[
    Container(
      color: Colors.red,
      width: 100,
      height: 100,
    ),
    Container(
      color: Colors.green,
      width: 100,
      height: 100,
    ),
    Container(
      color: Colors.blue,
      width: 100,
      height: 100,
    ),
  ];
}
