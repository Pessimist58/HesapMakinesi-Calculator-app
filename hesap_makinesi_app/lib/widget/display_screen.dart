import 'package:flutter/material.dart';
import 'package:hesap_makinesi_app/utile/colors.dart';
import 'package:hesap_makinesi_app/utile/dimention.dart';

class DisplayScreen extends StatelessWidget {
  final nameAlg; // Ekranda gösterilecek algoritma başlığı
  final numDisplay; // Ekranda gösterilecek ana ilk numara
  final numHistory; // Ekranda gösterilecek geçmiş numara

  // Yapıcı fonksiyon, metinler ve seçenek olarak algoritma adı ile geçmiş numara alır
  const DisplayScreen(
      {super.key,
      required String displayText,
      this.nameAlg,
      this.numDisplay,
      this.numHistory});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Ekran boyutlarını alır

    return Container(
      height: Dimenstions.height270, // Ekran yüksekliği
      width: size.width, // Ekran genişliği
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.BorderColor, // Kenar rengi
            width: Dimenstions.BorderWidth5 + 2, // Kenar genişliği
          ),
          color: Color.fromRGBO(28, 153, 136, 0.996), // Arka plan rengi
          borderRadius:
              BorderRadius.circular(Dimenstions.Radius20)), // Köşe yarıçapı
      child: Padding(
        padding: EdgeInsets.only(right: Dimenstions.width10), // Sağdan padding
        child: Column(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Sütun elemanları arasındaki boşlukları eşitler
            children: [
              SizedBox(height: Dimenstions.height40), // Üstten boşluk
              Container(
                alignment:
                    Alignment.bottomRight, // Metni sağ alt köşede hizalar
                child: Text(
                  numHistory, // Geçmiş numara
                  style: TextStyle(
                    fontFamily: 'digital', // Dijital yazı tipi
                    fontSize: Dimenstions.fontSize30, // Yazı boyutu
                    color: const Color.fromARGB(163, 0, 0, 0), // Yazı rengi
                  ),
                ),
              ),
              Container(
                alignment:
                    Alignment.bottomRight, // Metni sağ alt köşede hizalar
                child: Text(
                  numDisplay, // Ana numara
                  style: TextStyle(
                    fontFamily: 'digital', // Dijital yazı tipi
                    fontSize: Dimenstions.fontSize65, // Yazı boyutu
                    color: const Color.fromARGB(255, 0, 0, 0), // Yazı rengi
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                      /*child: Icon(
                      Icons.arrow_right,
                      size: Dimenstions.IconSize40, // İkon boyutu
                    ),*/
                      ),
                  Container(
                    margin: EdgeInsets.only(
                        bottom: Dimenstions.height10), // Alt boşluk
                    child: Text(
                      nameAlg, // Algoritma adı
                      style: TextStyle(
                        fontFamily: 'digital', // Dijital yazı tipi
                        fontWeight: FontWeight.bold, // Kalın yazı tipi
                        fontSize: Dimenstions.fontSize30, // Yazı boyutu
                        color:
                            const Color.fromARGB(229, 24, 23, 23), // Yazı rengi
                        letterSpacing: 1, // Harfler arasındaki boşluk
                      ),
                    ),
                  )
                ],
              ),
            ]),
      ),
    );
  }
}
