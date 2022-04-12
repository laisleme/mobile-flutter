import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int _counter = 0;

  void add() {
    setState(() {
      _counter++;
    });
  }

  void minus() {
    setState(() {
      if (_counter != 0) _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: _titulo()),
      body: new Container(
        // ignore: unnecessary_new
        child: new Center(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new FloatingActionButton(
                onPressed: add,
                child: new Icon(Icons.remove, color: Colors.black),
                backgroundColor: Colors.blue,
              ),
              new Text('$_counter', style: new TextStyle(fontSize: 60.0)),
              new FloatingActionButton(
                onPressed: minus,
                child: new Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                backgroundColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Contador de números"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }
}
