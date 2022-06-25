// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ara/pages/beranda_login.dart';
import 'package:ara/pages/daftar.dart';
import 'package:ara/pages/homepage_admin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   Firebase.initializeApp();
//   runApp(
//     MaterialApp(
//       title: 'gabung_uts',
//       theme: ThemeData(
//         scaffoldBackgroundColor: Color(0xFF189AB4),
//       ),
//       home: Login(),
//     ),
//   );
// }

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    firebaseAuth.currentUser?.email;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
              child: Text(
                'LOGIN',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
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
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'Email',
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
                      controller: passwordController,
                      decoration: InputDecoration(hintText: 'Password'),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(30),
                      padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Color(0xFFD4F1F4),
                          borderRadius: BorderRadius.circular(40)),
                      child: GestureDetector(
                        onTap: () async {
                          try {
                            final newUser =
                                await firebaseAuth.signInWithEmailAndPassword(
                                    email: emailController.text,
                                    password: passwordController.text);
                            if (newUser != null) {
                              if (emailController.text == "admin@gmail.com") {
                                print('berhasil');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Homepage_Admin(),
                                ),
                              );
                              } else {
                                print('berhasil');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Beranda_login(),
                                ),
                              );
                              }
                              // print('berhasil');
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => Beranda_login(),
                              //   ),
                              // );
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => Beranda_login(),
                        // ),
                        // ),
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                'Masuk',
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.only(bottom: 40),
                      child: GestureDetector(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Daftar())),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text('Belum Punya Akun?'),
                            Text(
                              'Daftar',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
