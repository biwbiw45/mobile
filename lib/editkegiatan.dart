import 'package:flutter/material.dart';

void main() {
  runApp(EditKegiatan());
}

class EditKegiatan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Edit Kegiatan 1'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(Icons.person, size: 48.0),
                          SizedBox(height: 16.0),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Take Photo'),
                          ),
                          SizedBox(height: 16.0),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Kegiatan:',
                            ),
                          ),
                          SizedBox(height: 8.0),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Tanggal:',
                            ),
                          ),
                          SizedBox(height: 8.0),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Lokasi:',
                            ),
                          ),
                          SizedBox(height: 8.0),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Deskripsi:',
                            ),
                          ),
                          SizedBox(height: 16.0),
                          ElevatedButton(
                            onPressed: () {
                              // Tambahkan logika untuk menyimpan atau mengupdate kegiatan
                            },
                            child: Text('Simpan Kegiatan'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text('Edit Kegiatan'),
            ),
          ],
        ),
      ),
    );
  }
}
