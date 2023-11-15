import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil = "".obs;

  void hitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil perhitungan dari $sisi x $sisi = $hitung";
  }

  void hitungKeliling(){
    int hitung1 = 4 * sisi;
    hasil.value = "Hasil perhitungan Keliling Persegi yang bersisi $sisi = $hitung1";
  }
}