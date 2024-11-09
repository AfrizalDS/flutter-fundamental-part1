import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Memastikan lebar mengikuti lebar layar
      child: const BottomAppBar(
        color: const Color.fromARGB(255, 230, 0, 255),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Nama: Afrizal Dwi Septian, \nNIM: 2241720122',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ),
    );
  }
}
