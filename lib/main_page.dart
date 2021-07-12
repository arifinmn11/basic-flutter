import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Custom Card Example',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF8C062F),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
                    end: Alignment.topCenter,
                    begin: Alignment.bottomCenter)),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: <Widget>[
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4)),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg'),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                100, 50 + MediaQuery.of(context).size.height * 0.5, 100, 50),
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(
                    'Beautiful Sunset at Paddy Field',
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFFF56D6D),
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Post on ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '22 June 2020',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFFF56D6D),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Spacer(
                        flex: 10,
                      ),
                      Icon(
                        Icons.thumb_up,
                        size: 18,
                        color: Colors.grey,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        '99',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Spacer(
                        flex: 5,
                      ),
                      Icon(
                        Icons.comment,
                        size: 18,
                        color: Colors.grey,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        '991',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Spacer(
                        flex: 10,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
