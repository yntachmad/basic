import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          "Basics",
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Icon(Icons.circle_notifications),
          Icon(Icons.circle_notifications),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(20.0),
        color: Colors.amber,
        child: Icon(
          Icons.headset_mic,
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
