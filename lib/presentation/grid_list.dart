import 'package:basic/item_detail/item_detail_page.dart';
import 'package:flutter/material.dart';

class GridList extends StatefulWidget {
  @override
  _GridListState createState() => _GridListState();
}

class _GridListState extends State<GridList> {
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
          child: GridView.builder(
            itemCount: listGambar.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, idx) => InkWell(
              onTap: () {
                print("ini gambar " + listGambar[idx]);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        ItemDetailPage(textAppbar: listGambar[idx])));
              },
              child: Container(
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
      ),
    );
  }
}
