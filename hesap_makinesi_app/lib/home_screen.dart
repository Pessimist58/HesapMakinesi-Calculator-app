import 'package:flutter/material.dart';
import 'package:hesap_makinesi_app/utile/colors.dart';
import 'package:hesap_makinesi_app/utile/dimention.dart';
import 'package:hesap_makinesi_app/widget/button.dart';
import 'package:hesap_makinesi_app/widget/display_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double firstNum = 0; // İlk sayı
  double secondNum = 0; // İkinci sayı
  String history = ""; // Hesap geçmişi
  String res = ''; // Sonuç
  String? operator; // Operatörler (+, -, X, ÷, %)
  String arithName = ''; // İşlem adı (TOPLA, CIKARMA, vb.)
  String allAlg = ''; // Tüm algoritma metni
  String textDisplay = '0'; // Ekranda görünen metin

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(15, 15, 15, 0), // Arka plan rengi
        body: Padding(
          padding: EdgeInsets.only(
            top: Dimenstions.height50, // Üstten boşluk
            bottom: Dimenstions.height20, // Alttan boşluk
            left: Dimenstions.width20, // Soldan boşluk
            right: Dimenstions.width20, // Sağdan boşluk
          ),
          child: Column(children: [
            DisplayScreen(
              nameAlg: allAlg, // İşlem adı
              numDisplay: textDisplay, // Ekran metni
              numHistory: history, // Hesap geçmişi
              displayText: '', // DisplayText (şu anda kullanılmıyoruz)
            ),
            SizedBox(
              height: Dimenstions.height25, // Butonlar arasındaki boşluk
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // Elemanlar arasındaki boşlukları eşitler
              children: [
                // İşlem butonları satırı
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, // Satır içindeki butonlar arasındaki boşluk
                  children: [
                    Button(
                      text: 'A/C', // Tüm verileri sıfırlar
                      callBack: btnOnClick,
                      TextColor: AppColor.TextColorlight,
                    ),
                    Button(
                      text: 'C', // Ekranı temizler
                      callBack: btnOnClick,
                      TextColor: AppColor.TextColorlight,
                    ),
                    Button(
                      text: '%', // Modül hesaplaması
                      callBack: btnOnClick,
                      textSize: Dimenstions.height30,
                      TextColor: AppColor.TextColorlight,
                    ),
                    Button(
                      text: '÷', // Bölme
                      callBack: btnOnClick,
                      TextColor: AppColor.TextColorlight,
                      textSize: Dimenstions.height40,
                    ),
                  ],
                ),
                // Sayı butonları satırı
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: '7', // sayı
                      callBack: btnOnClick,
                    ),
                    Button(
                      text: '8', // sayı
                      callBack: btnOnClick,
                    ),
                    Button(
                      text: '9', // sayı
                      callBack: btnOnClick,
                    ),
                    Button(
                      text: 'X', // Çarpma
                      callBack: btnOnClick,
                      textSize: Dimenstions.height20,
                      TextColor: AppColor.TextColorlight,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: '4', // sayı
                      callBack: btnOnClick,
                    ),
                    Button(
                      text: '5', // sayı
                      callBack: btnOnClick,
                    ),
                    Button(
                      text: '6', // sayı
                      callBack: btnOnClick,
                    ),
                    Button(
                      text: '-', // Çıkarma
                      callBack: btnOnClick,
                      textSize: Dimenstions.height40,
                      TextColor: AppColor.TextColorlight,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: '1', // sayı
                      callBack: btnOnClick,
                    ),
                    Button(
                      text: '2', // sayı
                      callBack: btnOnClick,
                    ),
                    Button(
                      text: '3', // sayı
                      callBack: btnOnClick,
                    ),
                    Button(
                      text: '+', // Toplama
                      callBack: btnOnClick,
                      textSize: Dimenstions.height30,
                      TextColor: AppColor.TextColorlight,
                    ),
                  ],
                ),
                // Sonuç butonları satırı
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Button(
                        text: '0',
                        callBack: btnOnClick,
                      ),
                    ),
                    SizedBox(
                      width: Dimenstions.width50, // Butonlar arasındaki boşluk
                    ),
                    Button(
                      text: '.',
                      callBack: btnOnClick,
                      textSize: Dimenstions.height50,
                    ),
                    SizedBox(
                      width: Dimenstions.width30,
                    ),
                    Button(
                      text: '=',
                      callBack: btnOnClick,
                      textSize: Dimenstions.height40,
                      TextColor: AppColor.TextColorlight,
                    ),
                  ],
                )
              ],
            ))
          ]),
        ));
  }

  void btnOnClick(String btnVal) {
    print(btnVal); // Buton değerini yazdırır

    if (btnVal == 'C') {
      // Ekranı ve tüm değişkenleri sıfırlar
      textDisplay = '0';
      firstNum = 0;
      secondNum = 0;
      res = '';
      allAlg = '';
      arithName = 'silme';
      history = '';
    } else if (btnVal == 'A/C') {
      // Ekranı temizler
      textDisplay = '0';
      firstNum = 0;
      secondNum = 0;
      res = '';
      allAlg = '';
      arithName = 'reset';
      history = '';
    } else if (btnVal == '÷' ||
        btnVal == 'X' ||
        btnVal == '+' ||
        btnVal == '-' ||
        btnVal == '%') {
      // İşlem operatörünü saklar ve ekranı sıfırlar
      arithName = getOperationName(btnVal);
      firstNum = double.tryParse(textDisplay) ?? 0;
      res = '';
      operator = btnVal;
    } else if (btnVal == '=') {
      // Sonucu hesaplar ve geçmişi günceller
      arithName = 'SONUC';
      secondNum = double.tryParse(textDisplay) ?? 0;

      if (operator != null) {
        switch (operator) {
          case '+':
            res = formatResult(firstNum + secondNum); // Toplama
            break;
          case '-':
            res = formatResult(firstNum - secondNum); // Çıkarma
            break;
          case 'X':
            res = formatResult(firstNum * secondNum); // Çarpma
            break;
          case '÷':
            if (secondNum == 0) {
              res = 'Error'; // Sıfıra bölme hatası
            } else {
              res = formatResult(firstNum / secondNum); // Bölme
            }
            break;
          case '%':
            res = formatResult(firstNum % secondNum); // Modül
            break;
          default:
            res = 'Error'; // Bilinmeyen işlem hatası
            break;
        }
        history =
            '$firstNum $operator $secondNum = $res'; // Hesap geçmişini günceller
      } else {
        res = 'Error'; // Operatör seçilmemişse hata mesajı
      }
    } else {
      // Sayı veya ondalık nokta ekler
      if (btnVal == '.') {
        if (!textDisplay.contains('.')) {
          res = textDisplay + btnVal;
        }
      } else {
        res = (textDisplay == '0' ? btnVal : textDisplay + btnVal);
      }
    }

    setState(() {
      textDisplay = res; // Ekran metnini günceller
      allAlg = arithName; // İşlem adını günceller
    });
  }

  String formatResult(double value) {
    // Sonuç değerini formatlar tam sayı veya ondalıklı
    if (value == value.toInt()) {
      return value.toInt().toString(); // Tam sayı
    } else {
      return value.toStringAsFixed(2); // Ondalıklı sayı iki basamak
    }
  }

  String getOperationName(String operator) {
    // Operatörün adlarını döndürür
    switch (operator) {
      case '÷':
        return 'BOLME';
      case 'X':
        return 'CARPMA';
      case '-':
        return 'CIKARMA';
      case '+':
        return 'TOPLA';
      case '%':
        return 'MOD ALMA';
      default:
        return '';
    }
  }
}
