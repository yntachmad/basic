import 'package:basic/dashboard/dashboard.dart';
import 'package:basic/widgets/icon_with_label.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          "Online Course",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(Icons.circle_notifications),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.circle_notifications),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: new ElevatedButton(
              onPressed: () {
                String judul = 'ini dari halaman home';
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => Dashboard(
                          title: judul,
                        )));
              },
              child: Text("to Dashboard"),
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Cloumn1(
                  icon: Icons.phone_android,
                  text: "CALL",
                  warna: Colors.green,
                ),
                Cloumn1(
                  icon: Icons.navigation,
                  text: "ROUTE",
                  warna: Colors.blue,
                ),
                Cloumn1(
                  icon: Icons.share,
                  text: "SHARE",
                  warna: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
