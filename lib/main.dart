import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool sad = false;
  bool mumu = false;
  bool reset = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Bocchi Image")),
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: EdgeInsets.all(3),
                width: 500,
                height: 200,
                color: Colors.amberAccent,
                child: Image(
                  image: AssetImage('Images/bocchi.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment(0, 0),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (sad == false) {
                            sad = true;
                            reset = false;
                            mumu = false;
                          } else {
                            sad = false;
                            reset = false;
                          }
                        });
                      },
                      child: Text("sad Bocchi")),
                ),
                Align(
                  alignment: Alignment(0, 0),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (mumu == false) {
                            mumu = true;
                            reset = false;
                            sad = false;
                          } else {
                            mumu = false;
                            reset = false;
                          }
                        });
                      },
                      child: Text("mumumu Bocchi")),
                ),
                Align(
                  alignment: Alignment(0, 0),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          mumu = false;
                          sad = false;
                          reset = true;
                        });
                      },
                      child: Text("Reset Bocchi")),
                )
              ],
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment(0, 0.7),
                  child: Visibility(
                    child: Container(
                      padding: EdgeInsets.all(3),
                      width: 500,
                      height: 200,
                      color: Colors.amberAccent,
                      child: Image(
                        image: AssetImage('Images/reset.gif'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    visible: reset,
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.7),
                  child: Visibility(
                    child: Container(
                      padding: EdgeInsets.all(3),
                      width: 500,
                      height: 200,
                      color: Colors.amberAccent,
                      child: Image(
                        image: AssetImage('Images/sad.gif'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    visible: sad,
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.7),
                  child: Visibility(
                    child: Container(
                      padding: EdgeInsets.all(3),
                      width: 500,
                      height: 200,
                      color: Colors.amberAccent,
                      child: Image(
                        image: AssetImage('Images/mumu.gif'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    visible: mumu,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
