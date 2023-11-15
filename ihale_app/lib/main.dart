import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ihale_app/homepage.dart';
import 'package:ihale_app/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kayıt Sayfası',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
