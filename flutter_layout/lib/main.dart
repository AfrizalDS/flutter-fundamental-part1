import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return MaterialApp(
      title: 'Flutter layout: Afrizal Dwi Septian dan 2241720122',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            imageSection(),
            titleSection,
            buttonSection(color),
            textSection,
            Image.asset(
              'assets/images/image01.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  Widget buttonSection(Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    mainAxisAlignment: MainAxisAlignment
        .spaceBetween, // Menjaga jarak antara teks dan ikon bintang
    children: [
      Expanded(
        /* soal 1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* soal 2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Wisata Gunung di Batu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text(
              'Batu, Malang, Indonesia',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      const Icon(
        Icons.star,
        color: Colors.red,
      ),

      const SizedBox(
          width: 8), // Menambahkan sedikit jarak antara ikon dan teks
      const Text('41'),
    ],
  ),
);

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Gunung Batu bukan hanya menawarkan keindahan alam, tetapi juga pengalaman petualangan yang menarik bagi para wisatawan. Dengan segala daya tarik yang dimiliki, gunung ini menjadi salah satu tempat wisata yang wajib dikunjungi saat berada di kota Batu, Malang. '
    '\n\nAfrizal Dwi Septian dan 2241720122 ',
    
    softWrap: true,
  ),
);

Widget imageSection() {
  return Image.asset(
    width: double.infinity, // Membuat lebar container sesuai lebar layar
    'assets/images/image.png', // Ganti dengan path gambar yang sesuai
    fit: BoxFit.fill, // Mengisi seluruh area
  );
}
