import 'package:flutter/material.dart';
import 'info.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
              child:
                  Text("Ecom App UI", style: TextStyle(color: Colors.black))),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.add_alert_sharp, color: Colors.black),
            ),
          ],
        ),
        body: data(),
      ),
    );
  }
}
