import 'package:bangun_datar_app/controller/jajargenjang_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Jajargenjangpage extends StatelessWidget {
  Jajargenjangpage({super.key});
  final JajargenjangController _JajargenjangController = Get.put(JajargenjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Jajargenjang_page"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/jajargenjang.png", height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Jajar Genjang"),
          ),
          Text("Jajar genjang adalah bangun datar miring yang memiliki alas, tinggi dan sisi miring "),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (value){
                _JajargenjangController.alas=int.parse(value);
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
                _JajargenjangController.tinggi=int.parse(value);
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

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (value){
                _JajargenjangController.sisiMiring=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Sisi Miring',
                  hintText:  'Masukkan Sisi Miring',
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
                    _JajargenjangController.hitungLuas();
                  }, child: Text("Hitung Luas")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange
                  ),
                  onPressed: (){
                    _JajargenjangController.hitungKeliling();
                  }, child: Text("Hitung Keliling")),

            ],
          ),
          Obx(
                ()=> Text(
              _JajargenjangController.hasil.value,
              style: TextStyle(
                  color: _JajargenjangController.isHitungLuas.value
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
