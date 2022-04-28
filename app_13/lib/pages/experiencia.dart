import 'package:flutter/material.dart';

class Experiencia extends StatelessWidget {
  Experiencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Experiências'),
        titleTextStyle: TextStyle(fontSize: 2),
        backgroundColor: Color.fromARGB(255, 214, 62, 207),
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
        margin: EdgeInsets.all(1),
        width: double.infinity,
        child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'));
  }
}