// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Daftar_pengelola extends StatelessWidget {
  const Daftar_pengelola({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xFF189AB4),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 60, 20, 60),
            child: Text(
              "DAFTAR PENGELOLA",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          Center(
            child: Container(
              width: 360,
              height: 470,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 25),
                    alignment: Alignment.topLeft,
                    child: Text("Nama Pengelola: ",
                        style: TextStyle(
                          fontSize: 15,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 25),
                    alignment: Alignment.topLeft,
                    child: Text("Nama Tempat: ",
                        style: TextStyle(
                          fontSize: 15,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 25),
                    alignment: Alignment.topLeft,
                    child: Text("Alamat Tempat: ",
                        style: TextStyle(
                          fontSize: 15,
                        )),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 25),
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Container(
                            child: Text("Surat Pernyataan: ",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10.0, 2, 10.0, 2),
                            margin: EdgeInsets.only(right: 5),
                            child: Text("Download",
                                style: TextStyle(
                                  fontSize: 11,
                                )),
                            decoration: BoxDecoration(
                              color: Color(0xFF4ECB71),
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10.0, 2, 10.0, 2),
                            child: Text("Upload",
                                style: TextStyle(
                                  fontSize: 11,
                                )),
                            decoration: BoxDecoration(
                              color: Color(0xFF4ECB71),
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 25),
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Container(
                            child: Text("Foto Pura: "),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 60.0),
                            padding: EdgeInsets.fromLTRB(20.0, 2, 20.0, 2),
                            child: Text("Upload"),
                            decoration: BoxDecoration(
                              color: Color(0xFF4ECB71),
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ],
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: Text(
                      'Kirim',
                      style: TextStyle(fontSize: 18),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFD4F1F4),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
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
