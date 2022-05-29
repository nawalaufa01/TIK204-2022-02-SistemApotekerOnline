import 'package:flutter/material.dart';
import 'package:my_apotek/daftarpasien.dart';

class HalamanDaftar extends StatelessWidget {
  const HalamanDaftar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    )),
              ),
              SizedBox(
                height: 150,
              ),
              Text(
                'DAFTAR AKUN',
                style: TextStyle(
                    color: Colors.blueGrey.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 20, top: 60),
                  width: 300,
                  height: 55,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueGrey.shade700),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Daftapasien();
                      }));
                    },
                    child: Text(
                      'PASIEN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(bottom: 20),
                  width: 300,
                  height: 55,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueGrey.shade700),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Daftapasien();
                      }));
                    },
                    child: Text(
                      'DOKTER',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  )),
              Container(
                  width: 300,
                  height: 55,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueGrey.shade700),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Daftapasien();
                      }));
                    },
                    child: Text(
                      'APOTEK',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
