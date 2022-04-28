import 'package:app_12/pages/experiencia.dart';
import 'package:app_12/pages/formacao.dart';
import 'package:app_12/pages/pessoal.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;

  final telas = [
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
        body: telas[_currentPage],
        drawer: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 129, 5, 77),
              ),
              accountName: Text('Lais Leme'),
              accountEmail: Text('lais.leme1401@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fbr.freepik.com%2Ffotos-premium%2Festrelas-e-galaxia-espaco-ceu-noite-universo-preto-fundo-estrelado-de-starfield-brilhante_6710476.htm&psig=AOvVaw3YtedqS8Dggua8r8Fiu9Ke&ust=1651175300150000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCNj8o8aBtfcCFQAAAAAdAAAAABAD'),
              ),
            ),
            ListTile(
              title: Text('Home'),
              trailing: Icon(Icons.home),
              onTap: () {
                setState(() {
                  _currentPage = 0;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Pessoal'),
              subtitle: Text('Informações Pessoais'),
              trailing: Icon(Icons.account_box_outlined),
              onTap: () {
                setState(() {
                  _currentPage = 1;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Formação'),
              trailing: Icon(Icons.grade_outlined),
              onTap: () {
                setState(() {
                  _currentPage = 2;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Experiências'),
              trailing: Icon(Icons.lightbulb_outline),
              onTap: () {
                setState(() {
                  _currentPage = 3;
                });
              },
            ),
          ],
        )),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("App 12 - Meu Perfil com Drawer Navigation"),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 171, 57, 144),
    );
  }
}