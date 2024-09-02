import 'package:flutter/material.dart';
import 'package:hesap_makinesi_app/utile/dimention.dart';
import '../utile/colors.dart';

class Button extends StatelessWidget {
  final String text; // Buton üzerinde görünen metin
  final Color TextColor; // Metin rengi
  final double textSize; // Metin boyutu
  final Function callBack; // Butona tıklanma olayında çağrılacak fonksiyon

  // Yapıcı fonksiyon, metin, metin rengi, metin boyutu ve geri çağırma fonksiyonu ile butonu oluşturur
  const Button(
      {super.key,
      required this.text,
      this.TextColor = Colors.white, // Varsayılan metin rengi beyaz
      this.textSize = 25, // Varsayılan metin boyutu 25
      required this.callBack});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callBack(
            text); // Butona tıklanma olayında callBack fonksiyonunu çağırır
      },
      child: Container(
        height: Dimenstions.height75, // Buton yüksekliği
        width: Dimenstions.height75, // Buton genişliği (yükseklik ile aynı)
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(Dimenstions.Radius25), // Köşe yarıçapı
          color: AppColor.BackgroundColor, // Arka plan rengi
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(255, 255, 255, 0.102), // Üst gölge rengi
              offset: Offset(-2, -2), // Üst gölge konumu
              blurRadius: 9, // Üst gölge bulanıklık yarıçapı
              spreadRadius: 1, // Üst gölge yayılma yarıçapı
            ),
            BoxShadow(
              color: Color.fromRGBO(0, 126, 90, 1), // Alt gölge rengi
              offset: Offset(2, 2), // Alt gölge konumu
              blurRadius: 4, // Alt gölge bulanıklık yarıçapı
              spreadRadius: 1, // Alt gölge yayılma yarıçapı
            ),
          ],
          gradient: const LinearGradient(
            begin: Alignment.topLeft, // Gradyanın başlangıç noktası
            end: Alignment.bottomRight, // Gradyanın bitiş noktası
            colors: [
              Color.fromRGBO(0, 58, 42, 1), // Gradyanın ilk rengi
              Color.fromRGBO(17, 29, 53, 0.984) // Gradyanın ikinci rengi
            ],
          ),
        ),
        child: Center(
          child: Text(
            text, // Buton üzerindeki metin
            style: TextStyle(
              fontSize: textSize, // Metin boyutu
              color: TextColor, // Metin rengi
            ),
          ),
        ),
      ),
    );
  }
}
