import 'package:firebase_core/firebase_core.dart'; // Firebase'i kullanmak için gerekli paket
import 'package:flutter/material.dart'; // Flutter UI bileşenleri
import 'package:get/get.dart'; // get paketini import ettik
import 'package:hesap_makinesi_app/firebase_options.dart'; // Firebase seçenekleri
import 'home_screen.dart'; // Ana ekran bileşeni

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp()); // Uygulamayı başlatır
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      // GetMaterialApp kullandık
      title: 'Hesap Makinesi', // Uygulama başlığı
      debugShowCheckedModeBanner: false,
      home: HomeScreen(), // Ana ekran bileşenini belirtir
    );
  }
}
