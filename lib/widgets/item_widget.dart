import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_catalog/models/catelog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 18, left: 18, top: 6, bottom: 6),
      child: Card(
        child: ListTile(
        onTap: () {
          print("${item.name}");
        },
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.description),
          trailing: Text("\$${item.price.toString()}",
            style: const TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
              fontSize: 20.0
            ),
          ),
        ),
      ),
    );
  }
}