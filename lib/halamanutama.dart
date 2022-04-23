import 'package:flutter/material.dart';

void main() {
  runApp(HalamanUtama());
}

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('HALAMAN UTAMA')],
        ),
      )),
    );
  }
}
