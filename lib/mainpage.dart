import 'package:flutter/material.dart';
import 'logic.dart';
//import 'package:rflutter_alert/rflutter_alert.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Score s = new Score();

  void buttonAction(int n) {
//    Alert(
//      context: context,
//      //type: AlertType.success,
//      title: "Series WON!",
//      desc: "The Series was won by TanManPRO",
//      buttons: [
//        DialogButton(
//          color: Color(0xFF0A0E21),
//          child: Text(
//            "Reset Series",
//            style: TextStyle(color: Colors.white, fontSize: 20),
//          ),
//          onPressed: () {
//            //buttonAction(4);
//          },
//          width: 120,
//        )
//      ],
//    ).show();
    setState(() {
      if (n == 1) {
        s.s1();
      }
      if (n == 2) {
        s.s2();
      }
      if (n == 3) {
        s.reset();
      }
      if (n == 4) {
        s.HardReset();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.blue[600],
                    radius: 40,
                    backgroundImage: AssetImage('images/b.jpg'),
                  ),
                  Text(
                    'Game ' + s.get_game(),
                    style: TextStyle(fontSize: 27, color: Colors.white),
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.red[600],
                    backgroundImage: AssetImage('images/a.jpg'),
                  ),
                ],
              ),
            ), // Faces and game number
//            SizedBox(
//              height: 5,
//            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF1D1E33),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'TanManPro ',
                      style: TextStyle(fontSize: 27, color: Colors.white),
                    ),
                    Text(
                      'vs',
                      style: TextStyle(fontSize: 27, color: Colors.white),
                    ),
                    Text(
                      'DineshBE ',
                      style: TextStyle(fontSize: 27, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ), // Players' names
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: FlatButton(
                          onPressed: () {
                            if (!s.s_end) {
                              buttonAction(1);
                            }
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              s.get_won1(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        flex: 2,
                        child: new FlatButton(
                          onPressed: () {
                            if (!s.s_end) {
                              buttonAction(1);
                            }
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          child: Text(
                            s.get_score1(),
                            style: TextStyle(color: Colors.black, fontSize: 50),
                            textAlign: TextAlign.center,
                          ),
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        flex: 2,
                        child: new FlatButton(
                          onPressed: () {
                            if (!s.s_end) {
                              buttonAction(2);
                            }
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          child: Text(
                            s.get_score2(),
                            style: TextStyle(color: Colors.black, fontSize: 50),
                            textAlign: TextAlign.center,
                          ),
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: FlatButton(
                          onPressed: () {
                            if (!s.s_end) {
                              buttonAction(2);
                            }
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              s.get_won2(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ), // Scores
            Expanded(
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF1D1E33),
                ),
                child: Center(
                  child: Text(
                    s.get_rounds(),
                    style: TextStyle(fontSize: 27, color: Colors.white),
                  ),
                ),
              ),
            ), // ScoreTab

//            Text(
//              s.get_vic(),
//              style: TextStyle(fontSize: 27, color: Colors.white),
//            ), // victory
//            SizedBox(height: 20),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//              children: <Widget>[
//                new FlatButton(
//                  onPressed: () {
//                    if (!s.s_end) {
//                      buttonAction(1);
//                    }
//                  },
//                  shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
//                  child: new Icon(
//                    Icons.add,
//                    color: Colors.black,
//                  ),
//                  padding: EdgeInsets.all(50.0),
//                  color: Colors.blue,
//                ),
//                new FlatButton(
//                  onPressed: () {
//                    if (!s.s_end) {
//                      buttonAction(2);
//                    }
//                  },
//                  shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
//                  child: new Icon(
//                    Icons.add,
//                    color: Colors.black,
//                  ),
//                  padding: EdgeInsets.all(50.0),
//                  color: Colors.red,
//                ),
//              ],
//            ), // Buttons
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (!s.s_end) {
            buttonAction(3);
          }
        },
        child: GestureDetector(
          child: Text('Reset'),
          onLongPress: () {
            if (!s.s_end) {
              buttonAction(4);
            }
          },
        ),
      ),
    );
  }
}
