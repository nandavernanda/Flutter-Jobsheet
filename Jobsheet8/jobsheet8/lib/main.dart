// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: MyApp(),
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            buatKotak(Color.fromARGB(255, 107, 255, 206), 120),
            buatKotak(Color.fromARGB(255, 0, 3, 167), 90),
            buatKotak(Color.fromARGB(255, 0, 105, 190), 60),
            buatKotak(Color.fromARGB(255, 48, 241, 0)!, 90),
            buatKotak(Color.fromARGB(255, 104, 25, 150)!, 110),
            buatKotak(Colors.blue[300]!, 30),
            buatKotak(Colors.blue[300]!, 50),
            buatKotak(const Color.fromARGB(255, 0, 4, 255), 90),
            buatKotak(const Color.fromARGB(255, 0, 3, 2), 120),
            buatKotak(const Color.fromARGB(255, 0, 4, 255), 90),
            buatKotak(Colors.blue[300]!, 50),
            buatKotak(Colors.blue[300]!, 30),
          ],
        ),
        Text(
          'Ricky Agung Vernanda',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}

Widget buatKotak(Color warna, double ukuran) {
  return Container(
    decoration: BoxDecoration(
      color: warna,
    ),
    height: ukuran,
    width: ukuran,
    margin: EdgeInsets.all(10),
  );
}
