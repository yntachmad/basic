import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  final String textAppbar;
  ItemDetailPage({@required this.textAppbar});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(textAppbar),
      ),
      body: Container(
        width: double.infinity,
        child: Image.asset(
          textAppbar,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
