// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ara/pages/beranda_login.dart';
import 'package:ara/pages/pengaturan_bahasa.dart';

class Pengaturan extends StatelessWidget {
  const Pengaturan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF05445E),
          title: Center(
            child: Text(
              "Pengaturan",
              style: TextStyle(color: Colors.white),
            ),
          )
        ),
      body: Container(
        color: Colors.white,
        child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (Context) {
                return PengaturanBahasa();
              }));
            },
            child: Container(
              height: 100,
              width: 600,
              
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Pilih Bahasa",
                style: TextStyle(fontSize: 35),
              ),
            ),
          )
        ],
      ),
      ),
      
    );
  }
}
