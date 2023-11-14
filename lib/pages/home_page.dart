import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green.shade300,
            title: Text(
              "Home Page",
              style: TextStyle(color: Colors.white),
            )),
        body: Column(
          children: [
            CustomMenu(imageAssets: "asset/images.png",title: "Persegi"),
            CustomMenu(imageAssets: "asset/png_uw3a9g_3328.png",title: "Lingkaran"),
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.symmetric(vertical:8, horizontal:16),
              decoration: BoxDecoration(
                  color: Colors.green
              ),
              child: Column(
                children: [
                  Image.asset("asset/png_uw3a9g_3328.png", height: 100,),
                  Text("Lingkaran"),
                ],
              ),
            ),
          ],
        )
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAssets, required this.title,
  });
  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical:8, horizontal:16),
      decoration: BoxDecoration(
          color: Colors.green
      ),
      child: Column(
        children: [
          Image.asset(
            imageAssets
          ),
          Text("Persegi"),
        ],
      ),
    );
  }
}
