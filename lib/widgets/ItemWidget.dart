import 'package:first_app/models/Products.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (() => {}),
        leading: Image.network(item.img),
        title: Text(item.name),
        trailing: Text("\$${item.price}"),
      ),
    );
  }
}
