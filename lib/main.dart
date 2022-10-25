import 'package:flutter/material.dart';

// pages screen
import './pages/splashScreen.dart';
import './pages/mainScreen.dart';
import './pages/anggotaScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => SplashScreen(),
        '/main': (context) => MainScreen(),
        '/anggota': (context) => AnggotaSCreen()
      },
    );
  }
}
