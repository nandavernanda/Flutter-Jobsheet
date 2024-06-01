// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sort_child_properties_last, library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var listNama = [
    'Ricky',
    'Agung',
    'Vernanda',
    'STI202102168',
    'Ricky Agung Vernanda'
  ];

  var listWarna = [
    Color.fromARGB(255, 255, 217, 0),
    const Color.fromARGB(255, 240, 158, 255),
    const Color.fromARGB(255, 0, 3, 3),
    Color.fromARGB(255, 0, 34, 184),
    Color.fromARGB(255, 0, 255, 191)
  ];

  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Perkenalkan Nama saya :',
              textDirection: TextDirection.ltr,
            ),
            Text(
              listNama[index % listNama.length],
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: listWarna[index % listWarna.length],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Refresh',
        child: Icon(Icons.refresh),
        onPressed: incrementIndex,
      ),
    );
  }
}
