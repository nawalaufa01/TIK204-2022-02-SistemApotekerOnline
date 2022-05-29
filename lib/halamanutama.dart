import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_apotek/halamanKotakMasuk.dart';
import 'package:my_apotek/halamanMap.dart';
import 'package:my_apotek/halamanProfil.dart';
import 'package:my_apotek/tanyaDokter.dart';
import 'package:url_launcher/url_launcher.dart';

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
              BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Apotek'),
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
    final Uri _url = Uri.parse(
        'https://health.detik.com/berita-detikhealth/d-6100615/covid-19-korut-makin-menggila-wanita-hamil-karantina-di-gudang');
    final auth = FirebaseAuth.instance;
    String? name;

    String? email;
    String? alamat;
    if (auth.currentUser != null) {
      name = auth.currentUser!.displayName;
      email = auth.currentUser!.email;
      alamat = auth.currentUser!.photoURL;
    }

    void _launchUrl() async {
      if (!await launchUrl(_url)) throw 'Could not launch $_url';
    }

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
                    (name != null) ? name : '',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
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
                margin: EdgeInsets.only(top: 15, bottom: 20),
                padding: EdgeInsets.symmetric(vertical: 15),
                width: double.infinity,
                color: Colors.lightBlueAccent,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size(50, 20),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HalamanMap();
                    }));
                  },
                  child: Text(
                    'PILIH APOTEK',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 15, bottom: 20),
                padding: EdgeInsets.symmetric(vertical: 15),
                width: double.infinity,
                color: Colors.lightBlueAccent,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size(50, 20),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return TanyaDokter();
                    }));
                  },
                  child: Text(
                    'TANYA DOKTER',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Text(
                'Seputar Kesehatan',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero)),
                onPressed: _launchUrl,
                child: Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://akcdn.detik.net.id/community/media/visual/2022/05/12/wadaw-korut-lockdown-nasional-usai-umumkan-kasus-pertama-covid-19-7_169.jpeg?w=700&q=90'),
                          fit: BoxFit.cover)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
