// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ara/pages/beranda_login.dart';

class Detail_profil extends StatelessWidget {
  const Detail_profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xFF189AB4),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(20, 30, 20, 60),
            child: GestureDetector(
              child: Icon(
                Icons.arrow_back,
                size: 38,
                color: Colors.white,
              ),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Beranda_login())),
            ),
          ),
          Center(
            child: Container(
              width: 360,
              height: 490,
              child: Column(
                children: [
                  Container(
                    width: 120.0,
                    height: 120.0,
                    margin: EdgeInsets.only(top: 15.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/catur.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    alignment: Alignment.topLeft,
                    child: Text("Nama Pegguna: ",
                        style: TextStyle(
                          fontSize: 15,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 15),
                    alignment: Alignment.topLeft,
                    child: Text("Email: ",
                        style: TextStyle(
                          fontSize: 15,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 25),
                    alignment: Alignment.topLeft,
                    child: Text("No. HP: ",
                        style: TextStyle(
                          fontSize: 15,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 25),
                    alignment: Alignment.topLeft,
                    child: Text("Password: ",
                        style: TextStyle(
                          fontSize: 15,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 25),
                    alignment: Alignment.topLeft,
                    child: Text("Ganti Password: ",
                        style: TextStyle(
                          fontSize: 15,
                        )),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
