import 'package:flutter/material.dart';
import 'package:my_apotek/halamandaftar.dart';
import 'package:my_apotek/halamanutama.dart';
import 'authService.dart';

void main() {
  runApp(Halamanlogin());
}

class Halamanlogin extends StatelessWidget {
  const Halamanlogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController(text: '');
    TextEditingController passwordController = TextEditingController(text: '');
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'MY APOTEK',
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.shade700),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: 'Email'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: 'Kata Sandi'),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blueGrey.shade700),
                      ),
                      onPressed: () async {
                        await AuthServices.signIn(
                            emailController.text, passwordController.text);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Belum punya akun?',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HalamanDaftar();
                          }));
                        },
                        child: Text(
                          'DAFTAR',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
