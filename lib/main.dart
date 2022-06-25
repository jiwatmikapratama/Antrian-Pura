import 'package:flutter/material.dart';
import 'package:ara/pages/daftar.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(
    MaterialApp(
      title: 'gabung_uts',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF189AB4),
      ),
      home: Daftar(),
    ),
  );
}
