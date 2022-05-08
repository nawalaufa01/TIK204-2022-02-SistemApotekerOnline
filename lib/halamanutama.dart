import 'package:flutter/material.dart';
import 'package:my_apotek/halamanKotakMasuk.dart';
import 'package:my_apotek/halamanMap.dart';
import 'package:my_apotek/halamanProfil.dart';

class HalamanAwal extends StatefulWidget {
  const HalamanAwal({Key? key}) : super(key: key);

  @override
  State<HalamanAwal> createState() => _HalamanAwalState();
}

class _HalamanAwalState extends State<HalamanAwal> {
  int selectedIndex = 0;

  List halaman = [
    HalamanUtama(),
    HalamanMap(),
    HalamanKotakMasuk(),
    HalamanProfil()
  ];

  onTapPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            child: halaman[selectedIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: onTapPage,
            backgroundColor: Colors.blueGrey,
            selectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.location_on), label: 'Maps'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), label: 'Kotak Masuk'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil')
            ],
          ),
        ));
  }
}

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

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
              Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, size: 30, color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Hai Yasmina!!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                width: double.infinity,
                color: Colors.lightBlueAccent.shade700,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Penyakit : Demam\nObat        : Paracetamol\n                   Vitamin C',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        color: Colors.grey.shade300,
                        child: Text('Dr. Rezeki'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.symmetric(vertical: 15),
                width: double.infinity,
                color: Colors.lightBlueAccent,
                child: Text(
                  'PILIH APOTEK',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 15, bottom: 20),
                padding: EdgeInsets.symmetric(vertical: 15),
                width: double.infinity,
                color: Colors.lightBlueAccent,
                child: Text(
                  'TANYA DOKTER',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Seputar Kesehatan',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 160,
                width: double.infinity,
                color: Colors.grey,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 160,
                width: double.infinity,
                color: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
