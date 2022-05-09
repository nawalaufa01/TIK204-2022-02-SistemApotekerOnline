import 'package:flutter/material.dart';

class HalamanKotakMasuk extends StatelessWidget {
  const HalamanKotakMasuk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    'INFORMASI',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 30,
              ),
              Text(
                'Pesanan Anda',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 20),
                padding: EdgeInsets.all(15),
                width: double.infinity,
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    Text(
                      'APOTEK YADITAMA\nObat sedang diracik',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '15 Menit tiba dirumah anda',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Text(
                'Riwayat pembelian anda',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
