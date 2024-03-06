import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:product_catalog/pages/home_page.dart';
import 'package:product_catalog/pages/login_page.dart';
import 'package:product_catalog/utils/routes.dart';
import 'package:product_catalog/utils/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
      },
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
    );
  }
}
