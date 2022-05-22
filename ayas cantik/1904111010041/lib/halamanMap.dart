import 'package:flutter/material.dart';

class HalamanMap extends StatelessWidget {
  const HalamanMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width - 40,
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.only(left: 15),
                  color: Colors.white,
                  child: TextField(
                      decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Cari Apotek',
                  ))),
              Image.asset('assets/Maps.jpeg'),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(20),
                color: Colors.grey.shade300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Apotek Sakti',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 50),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 30),
                            color: Colors.blueGrey,
                            child: Text(
                              'PILIH',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Text(
                            '300m',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(20),
                color: Colors.grey.shade300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Apotek Maqaila',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 50),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 30),
                            color: Colors.blueGrey,
                            child: Text(
                              'PILIH',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Text(
                            '150m',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
