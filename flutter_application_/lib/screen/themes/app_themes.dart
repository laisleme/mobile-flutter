import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Color.fromARGB(255, 222, 82, 215);
const lightColor = Color.fromARGB(137, 194, 188, 188);
const backgroundColor = Color.fromARGB(237, 245, 245, 245);

// ignore: non_constant_identifier_names
ThemeData AppTheme() {
  var themeData2 = ThemeData(
    //primarySwatch: primaryColor,
    brightness: brightness,
    // textTheme: new TextTheme(
    //   button: new TextStyle(color: Colors.green),
    // ),
    // buttonTheme: new ButtonThemeData(
    //   buttonColor: Colors.orange,
    //   textTheme: ButtonTextTheme.primary,
    //   minWidth: 200,
    // ),
    // cardTheme: CardTheme(
    //   elevation: 5,
    //   color: Colors.indigo,
    // ),
    primaryColor: primaryColor,
    accentColor: primaryColor,
    fontFamily: 'Montserrat',
    buttonColor: Color.fromARGB(235, 230, 154, 203),
    cardColor: Colors.white,
  );
  var themeData = themeData2;
  return themeData;
}