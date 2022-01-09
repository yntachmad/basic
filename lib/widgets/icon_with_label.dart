import 'package:flutter/material.dart';

class Cloumn1 extends StatelessWidget {
  const Cloumn1({Key key, @required this.icon, @required this.text, this.warna})
      : super(key: key);

  final IconData icon;
  final String text;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 30,
          color: warna,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: warna,
          ),
        ),
      ],
    );
  }
}
