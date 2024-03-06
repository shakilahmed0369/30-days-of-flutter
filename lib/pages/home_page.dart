import 'package:flutter/material.dart';
import 'package:product_catalog/models/catelog.dart';
import 'package:product_catalog/widgets/drawer.dart';
import 'package:product_catalog/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final days = 30;
  final String framework = "flutter";

  @override
  Widget build(BuildContext context) {
  final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
        appBar: AppBar(
          title: Text("Catelog App!"),
        ),
        body: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummyList[index]);
          },
          ),
        drawer: MyDrawer(),
      );
  }
}