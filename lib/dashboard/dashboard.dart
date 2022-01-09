import 'package:basic/presentation/home.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  final String title;
  final String textButton;

  Dashboard({@required this.title, this.textButton});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Home()));
            },
            child: Text((textButton == null) ? "Default to home" : textButton),
          ),
        ),
      ),
    );
  }
}
