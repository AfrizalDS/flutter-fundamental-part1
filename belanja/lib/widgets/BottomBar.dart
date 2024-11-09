// widgets/BottomBar.dart
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      color:  Color.fromARGB(255, 255, 145, 0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Nama: Afrizal Dwi Septian, \nNIM: 2241720122',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
