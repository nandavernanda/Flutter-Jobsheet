// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sort_child_properties_last, library_private_types_in_public_api, no_logic_in_create_state

import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'RICKY',
    'AGUNG',
    'VERNANDA',
    'DENGAN',
    'NIM',
    'STI202102168',
    'PANGGILAN',
    'NANDA'
  ];
  var listWarna = [
    Color.fromARGB(255, 236, 71, 71),
    Color.fromARGB(255, 17, 197, 143),
    Color.fromARGB(255, 92, 11, 197),
    Color.fromARGB(255, 92, 52, 0),
    const Color.fromARGB(255, 194, 203, 255),
    Color.fromARGB(255, 15, 185, 149),
    const Color.fromARGB(255, 0, 84, 95),
    const Color.fromARGB(255, 142, 33, 243),
    Color.fromARGB(255, 241, 46, 121)
  ];
  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color.fromARGB(115, 105, 255, 222),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(20, 20),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'Nama Saya :',
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
    );
  }
}

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  @override
  State<StatefulWidget> createState() => state;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TeksUtama teksUtama = TeksUtama();

    return MaterialApp(
      title: 'I AM ?',
      home: Scaffold(
        appBar: AppBar(
          title: Text('I AM ?'),
          backgroundColor: Color.fromARGB(255, 0, 255, 242),
        ),
        body: Center(
          child: Column(
            children: [
              teksUtama,
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Refresh',
          child: Icon(Icons.refresh),
          onPressed: teksUtama.state.incrementIndex,
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
