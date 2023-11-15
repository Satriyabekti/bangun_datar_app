import 'package:bangun_datar_app/controller/persegipanjang_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegipanjangPage extends StatelessWidget {
  PersegipanjangPage({super.key});
  final PersegiPanjangController _persegiPanjangController = Get.put(PersegiPanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("persegipanjang_page"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/persegipanjang.png", height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Persegi Panjang"),
          ),
          Text("Persegi atau busur sangkar adalah bangun datar dua dimensi"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (value){
                _persegiPanjangController.panjang=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Panjang',
                  hintText:  'Masukkan Panjang',
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
                _persegiPanjangController.lebar=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Lebar',
                  hintText:  'Masukkan Lebar',
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
                    _persegiPanjangController.hitungLuas();
                  }, child: Text("Hitung Luas")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange
                  ),
                  onPressed: (){
                    _persegiPanjangController.hitungKeliling();
                  }, child: Text("Hitung Keliling")),

            ],
          ),
          Obx(
                ()=> Text(
              _persegiPanjangController.hasil.value,
              style: TextStyle(
                  color: _persegiPanjangController.isHitungLuas.value
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
