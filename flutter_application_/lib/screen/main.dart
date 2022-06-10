import 'package:flutter/material.dart';
import 'package:flutter_application_/screen/pages/login.page.dart';
import 'package:flutter_application_/screen/themes/app_themes.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme(),
      home: LoginPage(),
    );
  }
}
