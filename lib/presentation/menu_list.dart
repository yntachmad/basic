import 'package:flutter/material.dart';

class MenuList extends StatefulWidget {
  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  List<String> listGambar = [
    "assets/images/image1.jpeg",
    "assets/images/image2.jpeg",
    "assets/images/image3.jpeg",
    "assets/images/image4.jpeg",
    "assets/images/image5.jpeg",
    "assets/images/image6.jpeg",
    "assets/images/image7.jpeg",
    "assets/images/image8.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemCount: listGambar.length,
            itemBuilder: (context, idx) => Container(
              margin: EdgeInsets.only(top: 10.0),
              color: Colors.blueAccent,
              height: 100.0,
              width: 100.0,
              child: Image.asset(
                listGambar[idx],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
