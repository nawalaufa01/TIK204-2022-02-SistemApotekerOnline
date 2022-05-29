import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_apotek/authService.dart';
import 'package:my_apotek/halamanlogin.dart';

class HalamanProfil extends StatelessWidget {
  const HalamanProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;
    String? name;

    String? email;
    String? alamat;
    if (auth.currentUser != null) {
      name = auth.currentUser!.displayName;
      email = auth.currentUser!.email;
      alamat = auth.currentUser!.photoURL;
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    size: 34,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 20),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  width: double.infinity,
                  color: Colors.blueGrey.shade300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nama Lengkap'),
                      Text(
                        '$name',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Alamat Email'),
                      Text(
                        '$email',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Lokasi'),
                      Text(
                        '$alamat',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: double.infinity,
                  color: Colors.grey.shade400,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size(50, 30),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: (() => AuthServices.signOut().then((value) =>
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Halamanlogin())))),
                    child: Text(
                      'LOG OUT',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
