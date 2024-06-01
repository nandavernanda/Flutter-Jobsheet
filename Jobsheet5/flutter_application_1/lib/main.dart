// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Mahasiswa'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MahasiswaTile('Nanda', 'STI202102168'),
              MahasiswaTile('Vernanda', 'STI202102168'),
              MahasiswaTile('Ricky Agung Vernanda', 'STI202102168', isMe: true),
              MahasiswaTile('Ricky', 'STI202102168'),
              MahasiswaTile('Agung', 'STI202102168'),
            ],
          ),
        ),
      ),
    );
  }
}

class MahasiswaTile extends StatelessWidget {
  final String name;
  final String absenNumber;
  final bool isMe;

  const MahasiswaTile(this.name, this.absenNumber, {this.isMe = false});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = isMe ? Colors.green : Colors.transparent;
    return Container(
      color: backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 4.0),
                Text(
                  'NIM: $absenNumber',
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
