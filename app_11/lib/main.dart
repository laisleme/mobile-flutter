import 'package:app_11/pages/home.dart';
import 'package:app_11/pages/sobre.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App 11 - Abertura de Conta Bancária com duas telas',
        debugShowCheckedModeBanner: false,
        home: Home());
  }
}