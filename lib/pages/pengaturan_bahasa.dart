// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PengaturanBahasa extends StatelessWidget {
  const PengaturanBahasa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0XFF05445E),
          title: Center(
            child: Text(
              "Bahasa",
              style: TextStyle(color: Colors.white),
            ),
          )),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 100,
              width: 600,
              //color: Colors.black,
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Indonesia",
                style: TextStyle(fontSize: 35),
              ),
            ),
            Container(
              height: 100,
              width: 600,
              //color: Colors.black,
              padding: EdgeInsets.all(15.0),
              child: Text(
                "English",
                style: TextStyle(fontSize: 35),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
