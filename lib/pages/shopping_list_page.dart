import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/item_tile.dart';

class ShoppingListPage extends StatelessWidget {
  const ShoppingListPage({super.key});

  static const _items = [
    Item(name: 'Pommes', quantity: 6, desc: 'Pommes rouges bio', price: 3.50),
    Item(name: 'Pain', quantity: 1, desc: 'Baguette tradition', price: 1.20),
    Item(name: 'Lait', quantity: 2, desc: 'Lait demi-écrémé 1L', price: 1.10),
    Item(name: 'Œufs', quantity: 12, desc: 'Œufs fermiers plein air', price: 4.20),
    Item(name: 'Fromage', quantity: 1, desc: 'Comté affiné 18 mois', price: 7.80),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Liste de courses'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) => ItemTile(item: _items[index]),
      ),
    );
  }
}
