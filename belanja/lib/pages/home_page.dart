// pages/home_page.dart
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/BottomBar.dart';
import 'package:belanja/widgets/ItemCard.dart'; // Ganti item_tile dengan item_card
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, image: 'assets/img/gula.png'),
    Item(name: 'Salt', price: 2000, image: 'assets/img/garam.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Belanja Demo'),
        backgroundColor: const Color.fromARGB(255, 255, 145, 0),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemCard(item: items[index]); // Ganti ItemTile dengan ItemCard
        },
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
