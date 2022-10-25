import 'package:flutter/material.dart';

class AnggotaSCreen extends StatelessWidget {
  AnggotaSCreen({super.key});

  List<String> anggota = [
    'Rama Aryasuta Weihan',
    'Lintang Fadhillah H',
    'Muhammad Irhamsyah A',
    'Galih bayu Prakoso'
  ];

  List<String> nim = [
    '21120120120007',
    '21120120120007',
    '21120120120007',
    '21120120120007',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Anggota Kelompok'),
      ),
      body: ListView.builder(
        itemCount: anggota.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('${anggota[index]}'),
              subtitle: Text('${nim[index]}'),
            ),
          );
        },
      ),
    );
  }
}
