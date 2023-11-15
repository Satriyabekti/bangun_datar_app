import 'package:bangun_datar_app/controller/persegi_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Persegipage extends StatelessWidget {
  Persegipage({super.key});
  final PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Persegi_page"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/persegiblue.png", height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Persegi"),
          ),
          Text("Persegi atau busur sangkar adalah bangun datar dua dimensi"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (value){
                _persegiController.sisi=int.parse(value);
              },
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                labelText: 'Sisi',
                hintText:  'Masukkan Sisi',
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
                _persegiController.hitungLuas();
              }, child: Text("Hitung Luas")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange
                  ),
                  onPressed: (){
                    _persegiController.hitungKeliling();
                  }, child: Text("Hitung Keliling")),

            ],
          ),
          Obx(
                  ()=> Text(
                      _persegiController.hasil.value,
                  style: TextStyle(
                    color: _persegiController.isHitungLuas.value
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
