import 'package:flutter/material.dart';
import 'package:product_catalog/pages/home_page.dart';
import 'package:product_catalog/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}