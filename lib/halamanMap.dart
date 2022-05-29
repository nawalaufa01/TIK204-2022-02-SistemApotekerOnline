import 'package:flutter/material.dart';
import 'package:my_apotek/detailApotek.dart';
import 'package:my_apotek/listApotek.dart';

class HalamanMap extends StatelessWidget {
  const HalamanMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20),
            itemCount: apotekTerdekat.length,
            itemBuilder: (BuildContext context, index) {
              return Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(20),
                color: Colors.grey.shade300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      apotekTerdekat[index].nama!,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                        color: Colors.blueGrey,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size(50, 30),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailScreen(
                                  apotekTerdekat: apotekTerdekat[index]);
                            }));
                          },
                          child: Text(
                            'PILIH',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
