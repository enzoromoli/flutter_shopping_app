import 'package:flutter/material.dart';
import '../models/item.dart';
import '../pages/item_detail_page.dart';

class ItemTile extends StatelessWidget {
  final Item item;

  const ItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Hero(
          tag: item.name,
          child: const CircleAvatar(),
        ),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text('${item.price.toStringAsFixed(2)} €'),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ItemDetailPage(item: item),
            ),
          );
        },
      ),
    );
  }
}
