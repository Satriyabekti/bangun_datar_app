import 'package:bangun_datar_app/controller/persegi_controller.dart';
import 'package:bangun_datar_app/controller/segitiga_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Segitigapage extends StatelessWidget {
  Segitigapage({super.key});
  final SegitigaController _segitigaController = Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Segitiga_page"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/segitiga.png", height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Segitiga"),
          ),
          Text("Segitiga adalah bangun datar yang mempunyai ujung yang lancip dan memiliki 3 sisi"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (value){
                _segitigaController.alas=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Alas',
                  hintText:  'Masukkan Alas',
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (value){
                _segitigaController.tinggi=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Tinggi',
                  hintText:  'Masukkan Tinggi',
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: (){
                    _segitigaController.hitungLuas();
                  }, child: Text("Hitung Luas")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange
                  ),
                  onPressed: (){
                    _segitigaController.hitungKeliling();
                  }, child: Text("Hitung Keliling")),

            ],
          ),
          Obx(
                ()=> Text(
              _segitigaController.hasil.value,
              style: TextStyle(
                  color: _segitigaController.isHitungLuas.value
                      ? Colors.greenAccent
                      : Colors.orangeAccent
              ),
            ),
          ),

        ],
      ),
    );
  }
}
