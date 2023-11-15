import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{

  RxBool isHitungLuas = true.obs;

  int panjang = 0;
  int lebar = 0;

  final hasil = "".obs;

  void hitungLuas(){
    int hitung = panjang * lebar;
    hasil.value = "Hasil perhitungan dari $panjang x $lebar = $hitung";
    isHitungLuas.value = true;
  }

  void hitungKeliling(){
    int hitung1 = 2 * (panjang + lebar);
    hasil.value = "Hasil perhitungan Keliling Persegi yang bersisi   2 * $panjang + $lebar = $hitung1";
    isHitungLuas.value = false;
  }
}