import 'package:get/get.dart';

class PersegiController extends GetxController{

  RxBool isHitungLuas = true.obs;

  int sisi = 0;

  final hasil = "".obs;

  void hitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil perhitungan dari $sisi x $sisi = $hitung";
    isHitungLuas.value = true;
  }

  void hitungKeliling(){
    int hitung1 = 4 * sisi;
    hasil.value = "Hasil perhitungan Keliling Persegi yang bersisi $sisi = $hitung1";
    isHitungLuas.value = false;
  }
}