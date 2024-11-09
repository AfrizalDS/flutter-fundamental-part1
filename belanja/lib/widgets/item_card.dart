import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  final Function onTap;

  String formatCurrency(int price) {
    final formatter =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
    return formatter.format(price);
  }

  const ItemCard({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Set the desired radius
        ),
        elevation: 4, // Optional: adds a shadow effect
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
              12), // Ensures child widgets follow the card's rounded corners
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Use Expanded to ensure image does not overflow
              Expanded(
                child: Hero(
                  tag: item.photo,
                  child: Image.asset(
                    'assets/img/${item.photo}', // Gantilah dengan nama file gambar yang sesuai
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.storeName,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      formatCurrency(item.price),
                      style: const TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 230, 0, 255)),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Stock: ${item.stock}',
                          style: const TextStyle(
                              fontSize: 12, color: Colors.black54),
                        ),
                        // RatingBarIndicator(
                        //   rating: item.rating.toDouble(),
                        //   itemBuilder: (context, index) => const Icon(
                        //     Icons.star,
                        //     color: Colors.amber,
                        //   ),
                        //   itemCount: 5,
                        //   itemSize: 14.0,
                        //   direction: Axis.horizontal,
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
