import 'package:app_13/pages/experiencia.dart';
import 'package:app_13/pages/formacao.dart';
import 'package:app_13/pages/pessoal.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;

  final tabs = [
    Center(child: Text('Tela Home')),
    Pessoal(),
    Formacao(),
    Experiencia(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: tabs[_currentPage],
        bottomNavigationBar: _bottomNavigationBar(),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("App 13 - Meu Perfil com Bottom Navigation Bar"),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 212, 95, 197),
    );
  }

  _bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentPage,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      items: [
        _bottomNavigationBarItem('Home', Icons.home),
        _bottomNavigationBarItem('Pessoal', Icons.person),
        _bottomNavigationBarItem('Formação', Icons.school),
        _bottomNavigationBarItem('Experiência', Icons.work),
      ],
      onTap: (index) {
        setState(() {
          _currentPage = index;
        });
      },
    );
  }

  _bottomNavigationBarItem(label, icon) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}