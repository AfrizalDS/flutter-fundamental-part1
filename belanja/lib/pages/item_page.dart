import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';

class ItemPage extends StatelessWidget {
  final Item item; // Accept Item through constructor

  const ItemPage({super.key, required this.item});

  // Format the price using NumberFormat for Rupiah
  String formatCurrency(int price) {
    final formatter =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
    return formatter.format(price);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Item"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Hero(
                tag: item.photo,
                child: Image.network(
                  item.photo,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Hero(
                tag: item.name,
                child: Text(
                  item.name,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                item.storeName,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Price:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Text(
              formatCurrency(item.price),
              style: const TextStyle(fontSize: 22, color: Colors.teal),
            ),
            const SizedBox(height: 16),
            const Text(
              'Stock:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Text(
              '${item.stock} units',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'Rating:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
