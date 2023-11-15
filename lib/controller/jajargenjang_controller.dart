import 'package:get/get.dart';

class JajargenjangController extends GetxController{

  RxBool isHitungLuas = true.obs;

  int alas = 0;
  int tinggi = 0;
  int sisiMiring = 0;

  final hasil = "".obs;

  void hitungLuas(){
    num hitung =  alas * tinggi;
    hasil.value = "Hasil perhitungan dari luas segitiga = 0.5 x $alas = $tinggi = $hitung";
    isHitungLuas.value = true;
  }

  void hitungKeliling(){
    int hitung1 = 2 * alas + sisiMiring;
    hasil.value = "Hasil perhitungan Keliling Persegi yang bersisi 2 x $alas + $sisiMiring= $hitung1";
    isHitungLuas.value = false;
  }
}