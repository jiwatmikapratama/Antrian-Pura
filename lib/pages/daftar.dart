// ignore_for_file: prefer_const_constructors
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ara/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:convert';

import 'package:rflutter_alert/rflutter_alert.dart';

class Daftar extends StatefulWidget {
  const Daftar({Key? key}) : super(key: key);

  @override
  State<Daftar> createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  final _formKey = GlobalKey<FormState>();
  // FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  // DatabaseReference dbRef =
  //     FirebaseDatabase.instance.reference().child("Users");
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
                child: Text(
                  'REGISTER',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset('images/logo.png'),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 20, 50, 10),
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Nama Lengkap',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(hintText: 'Email'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(hintText: 'Password'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Konfirmsi Password'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(30),
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Color(0xFFD4F1F4),
                        borderRadius: BorderRadius.circular(40)),
                    child: Column(
                      children: [
                        Container(
                          child: GestureDetector(
                            // onTap: () => Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Login())),
                            onTap: () async {
                              FirebaseAuth firebaseAuth = FirebaseAuth.instance;
                              try {
                                final newUser = await firebaseAuth
                                    .createUserWithEmailAndPassword(
                                        email: emailController.text,
                                        password: passwordController.text);
                                if (newUser != null) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Login()));
                                }
                              } catch (e) {
                                var sg = e;
                                Alert(context: context,
                                title: "Register Warning",
                                image: Image.asset('images/false.png'),
                                style: alertStyle,
                                desc: sg.toString(),
                                buttons: [
                                  DialogButton(child: Text("OK"), onPressed: () => Navigator.pop(context),
                                  )
                                ]
                                ).show();
                                print(sg);
                              }
                            },
                            child: Text(
                              'Daftar',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 40),
                    child: GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login())),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('Sudah Punya Akun?'),
                          Text(
                            'Masuk',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
