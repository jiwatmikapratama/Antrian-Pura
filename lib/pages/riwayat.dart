// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ara/pages/beranda_login.dart';

class Riwayat extends StatelessWidget {
  const Riwayat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Container(
            color: Color(0XFF05445E),
            height: 100,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10.0, 0, 100.0, 0),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Beranda_login())),
                    child: Icon(
                    Icons.arrow_back,
                    size: 48,
                    color: Colors.white,
                  ),
                  )
                  
                  
                ),
                Container(
                  child: Text("Riwayat",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                ),
              ],
            ),
          ),
          Container(
            child: Container(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
                    height: 80.0,
                    child: Row(
                      children: [
                        Container(
                          width: 72.0,
                          height: 72.0,
                          margin: EdgeInsets.only(left: 5.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("images/catur.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15.0),
                              child: Text(
                                "Nama Pura",
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15.0),
                              child: Text(
                                "tanggal/bulan/tahun",
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
                    height: 80.0,
                    child: Row(
                      children: [
                        Container(
                          width: 72.0,
                          height: 72.0,
                          margin: EdgeInsets.only(left: 5.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("images/catur.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15.0),
                              child: Text(
                                "Nama Pura",
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15.0),
                              child: Text(
                                "tanggal/bulan/tahun",
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
                    height: 80.0,
                    child: Row(
                      children: [
                        Container(
                          width: 72.0,
                          height: 72.0,
                          margin: EdgeInsets.only(left: 5.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("images/catur.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15.0),
                              child: Text(
                                "Nama Pura",
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15.0),
                              child: Text(
                                "tanggal/bulan/tahun",
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
                    height: 80.0,
                    child: Row(
                      children: [
                        Container(
                          width: 72.0,
                          height: 72.0,
                          margin: EdgeInsets.only(left: 5.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("images/catur.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15.0),
                              child: Text(
                                "Nama Pura",
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15.0),
                              child: Text(
                                "tanggal/bulan/tahun",
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )),
          ),
        ],
      ),
    ));
  }
}
