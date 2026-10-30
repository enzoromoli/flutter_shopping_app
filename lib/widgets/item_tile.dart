import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemTile extends StatelessWidget {
  final Item item;

  const ItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const CircleAvatar(),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text('${item.price.toStringAsFixed(2)} €'),
      ),
    );
  }
}
