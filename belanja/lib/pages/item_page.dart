// pages/item_page.dart
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/BottomBar.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text('Item Details'),
        backgroundColor: const Color.fromARGB(255, 255, 145, 0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: itemArgs.name,
              child: Image.asset(
                itemArgs.image,
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Hero(
              tag: itemArgs.name, // Pastikan tag sama dengan di HomePage
              child: Text(
                "Name: ${itemArgs.name}",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Hero(
              tag: itemArgs.price, // Pastikan tag sama dengan di HomePage
              child: Text(
                "Price: \$${itemArgs.price}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
