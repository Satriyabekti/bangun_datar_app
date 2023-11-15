import 'package:bangun_datar_app/pages/Persegi_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.cyan.shade300,
          title: Text(
              "Home Page",
              style: TextStyle(
                color: Colors.white,
              )
          )
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Persegipage()));
            },

          child: customMenu(ImageAssets: "assets/persegiblue.png",title: "persegi"),),
          Row(
            children: [
              Expanded(child: customMenu(ImageAssets: "assets/segitiga.png",title: "segitiga")),
              Expanded(child: customMenu(ImageAssets: "assets/segitiga.png",title: "segitiga")),
              Expanded(child: customMenu(ImageAssets: "assets/segitiga.png",title: "segitiga")),

            ],
          ),
      Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.green
      ),
        child: Column(
          children: [
            Image.asset("assets/segitiga.png", height: 100,),
            Text("segitiga"),
          ],
        ),

          )
        ],

      ),
    );
  }
}

class customMenu extends StatelessWidget {
  const customMenu({
    super.key, required this.ImageAssets, required this.title,
  });
 final String ImageAssets;
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
    Image.asset(ImageAssets, height: 100,),
    Text(title),
        ],
      ),

    );
  }
}

