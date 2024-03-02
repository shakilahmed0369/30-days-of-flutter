import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final days = 30;
  final String framework = "flutter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Catelog App!"),
          backgroundColor: Colors.cyanAccent,
        ),
        body: Center(
          child: Text('$days days of $framework'),
        ),
        drawer: Drawer(),
      );
  }
}