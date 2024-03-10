import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:product_catalog/models/catelog.dart';
import 'package:product_catalog/widgets/drawer.dart';
import 'package:product_catalog/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final days = 30;

  final String framework = "flutter";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var catelogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedJson = jsonDecode(catelogJson);
    var productsData = decodedJson['products'];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog App!"),
      ),
      body: (CatalogModel.items.isNotEmpty)
          ? GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 16, crossAxisSpacing: 16),
              itemBuilder: (context, index) {
                final item = CatalogModel.items[index];
                return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: GridTile(
                      header: Container(
                        child: Text(item.name),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple
                        ),
                      ),
                      child: Image.network(item.image),
                      footer: Container(
                        child: Text(
                          item.price.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                      ),
                    ));
              },
              itemCount: CatalogModel.items.length,
            )
          : Center(child: CircularProgressIndicator()),
      drawer: MyDrawer(),
    );
  }
}
