import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_apotek/halamanlogin.dart';
import 'package:my_apotek/halamanutama.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User? user = Provider.of<User?>(context);
    if (user == null) {
      return Halamanlogin();
    } else {
      return HalamanAwal();
    }
    ;
  }
}
