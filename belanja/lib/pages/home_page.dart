import 'package:belanja/widgets/BottomBar.dart';
import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/item_card.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Core Keeper',
      storeName: 'Kievv Store',
      price: 1200000,
      photo: 'corekeeper.jpg',
      stock: 80,
    ),
    Item(
      name: 'Elven Assassin',
      storeName: 'Kievv Store',
      price: 2000000,
      photo: 'elvenass.jpg',
      stock: 200,
    ),
    Item(
      name: 'Farewell North',
      storeName: 'Kievv Store',
      price: 900000,
      photo: 'farewelnorth.jpg',
      stock: 97,
    ),
    Item(
      name: 'Sonic Frontiers',
      storeName: 'Kievv Store',
      price: 1100000,
      photo: 'sonicfrontiers.jpg',
      stock: 34,
    ),
    Item(
      name: 'Terra Nil',
      storeName: 'Kievv Store',
      price: 700000,
      photo: 'teranil.jpg',
      stock: 111,
    ),
    Item(
      name: 'TerraFormers',
      storeName: 'Kievv Store',
      price: 1040000,
      photo: 'terraformers.jpg',
      stock: 56,
    ),
    Item(
      name: 'Undercover',
      storeName: 'Kievv Store',
      price: 550000,
      photo: 'undercover.jpg',
      stock: 95,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kievvv ",
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        backgroundColor: const Color.fromARGB(255, 230, 0, 255),
      ),
      body: Container(
        color: Color.fromARGB(255, 250, 205, 255),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ItemCard(
                    item: item,
                    onTap: () {
                      context.go('/item', extra: item);
                    },
                  );
                },
              ),
            ),
            const BottomBar(), // Add Footer
          ],
        ),
      ),
    );
  }
}
