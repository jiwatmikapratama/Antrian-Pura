// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Tambah_Pura extends StatefulWidget {
  const Tambah_Pura({Key? key}) : super(key: key);

  @override
  State<Tambah_Pura> createState() => _Tambah_PuraState();
}

class _Tambah_PuraState extends State<Tambah_Pura> {
  TextEditingController controllerNama = TextEditingController();
  TextEditingController controllerAlamat = TextEditingController();
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference pura = firestore.collection('pura');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Tambah Data Pura'),
        backgroundColor: Color(0xFF189AB4),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: TextField(
                controller: controllerNama,
                decoration: InputDecoration(
                    hintText: "Nama Pura", labelText: "Nama Pura"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: TextField(
                controller: controllerAlamat,
                decoration: InputDecoration(
                    hintText: "Alamat Pura", labelText: "Alamat Pura"),
              ),
            ),
            Padding(padding: const EdgeInsets.all(10.0)),
            ElevatedButton(
                onPressed: () {
                  // simpanData();
                  pura.add({
                    'nama': controllerNama.text,
                    'alamat': controllerAlamat.text,
                  });
                  controllerNama.text = '';
                  controllerAlamat.text = '';

                  Navigator.pop(context);
                  
                },
                child: Text("Simpan"))
          ],
        ),
      ),
    );
  }
}