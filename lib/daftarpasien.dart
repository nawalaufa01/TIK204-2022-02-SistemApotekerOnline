import 'package:flutter/material.dart';
import 'package:my_apotek/halamanutama.dart';
import 'authService.dart';

class Daftapasien extends StatelessWidget {
  const Daftapasien({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController(text: '');
    TextEditingController passwordController = TextEditingController(text: '');
    TextEditingController nameController = TextEditingController(text: '');
    TextEditingController alamatController = TextEditingController(text: '');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                  )),
              SizedBox(
                height: 100,
              ),
              Text(
                'Nama Lengkap',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(bottom: 20, top: 10),
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(30)),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              Text(
                'Alamat',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(bottom: 20, top: 10),
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(30)),
                child: TextField(
                  controller: alamatController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              Text(
                'Email',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(bottom: 20, top: 10),
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(30)),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              Text(
                'Password',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(30)),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 50),
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueGrey.shade700),
                    ),
                    onPressed: () async {
                      await AuthServices.signUp(
                              emailController.text,
                              passwordController.text,
                              nameController.text,
                              alamatController.text)
                          .then((value) => Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return HalamanAwal();
                              })));
                    },
                    child: Text(
                      'Daftar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
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
