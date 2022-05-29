import 'package:flutter/material.dart';
import 'package:my_apotek/halamanutama.dart';
import 'package:my_apotek/listApotek.dart';

class DetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  const DetailScreen({required this.apotekTerdekat});

  // Declare a field that holds the Todo.
  final apotekTerdekat;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(apotekTerdekat.nama),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.store,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15),
              Text(
                apotekTerdekat.nama,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.green,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Harga Obat',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Rp50.000',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Daftar Obat',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Paracetamol (25.000)\nVitamin C (25.000)',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black)),
                child: TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Pesanan telah berhasil dilakukan'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Segera datang ke apotek untuk mengambil dan melakukan pembayaran',
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(Icons.check_circle,
                                    size: 100, color: Colors.green)
                              ],
                            ),
                            actions: [
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 80),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blueGrey),
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        minimumSize: Size(50, 30),
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                      ),
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return HalamanAwal();
                                        }));
                                      },
                                      child: Text(
                                        'OK',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )))
                            ],
                            actionsPadding: EdgeInsets.only(bottom: 20),
                            actionsAlignment: MainAxisAlignment.center,
                          );
                        });
                  },
                  child: Text(
                    'Pesan',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              )
            ]),
          ),
        ));
  }
}
