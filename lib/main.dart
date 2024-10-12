import 'package:flutter/material.dart';
import "Tambahkegiatan.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Struktur'),
          backgroundColor: Colors.green,
        ),
        body: TambahKegiatan()
      ),
    );
  }
}
