import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.orange;
  Color colorDisable = Colors.grey;
  bool isAccepted = false;

  Color targetColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Example Dragable'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Draggable<Color>(
                  data: color1,
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                        color: color1.withOpacity(0.7), shape: StadiumBorder()),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                      elevation: 2,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: colorDisable.withOpacity(0.2),
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: color2,
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                        color: color2.withOpacity(0.7), shape: StadiumBorder()),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      elevation: 2,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: colorDisable.withOpacity(0.2),
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (value) {
                isAccepted = true;
                targetColor = value;
              },
              builder: (context, candidates, rejected) {
                return (isAccepted)
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: targetColor,
                          shape: StadiumBorder(),
                        ),
                      )
                    : SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: colorDisable.withOpacity(0.5),
                          shape: StadiumBorder(),
                          elevation: 2,
                        ),
                      );
              },
            )
          ],
        ),
      ),
    );
  }
}
