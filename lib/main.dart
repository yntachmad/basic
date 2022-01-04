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
            fontWeight: FontWeight.w300,
          ),
        ),
        actions: [
          Icon(Icons.circle_notifications),
          Icon(Icons.circle_notifications),
        ],
      ),
      body: Center(
        child: Container(
          height: 80,
          width: double.infinity,
          color: Colors.grey[200],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone,
                    size: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "CALL",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.navigation,
                    size: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("ROUTE",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                      )),
                ],
              ),
              Cloumn1(),
            ],
          ),
        ),
      ),
    );
  }
}

class Cloumn1 extends StatelessWidget {
  const Cloumn1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.share,
          size: 30,
          color: Colors.blue,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "SHARE",
          style: TextStyle(
            fontSize: 16,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
