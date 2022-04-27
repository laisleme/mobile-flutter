import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controller = TextEditingController();
  String _dropdownDeController = '';
  String _dropdownParaControler = '';
  String _resultado = "";

  _calcular() {
    if (_controller.text.isEmpty) {
      _resultado = "";
      return;
    }

    double euroEmReal = 5.06;
    double dolarEmReal = 4.67;
    double euroEmDolar = 1.0825;

    double valor = double.parse(_controller.text);
    double resultado = 0;

    if (_dropdownDeController == 'euro' && _dropdownParaControler == 'euro') {
      resultado = valor;
    } else if (_dropdownDeController == 'euro' &&
        _dropdownParaControler == 'dolar') {
      resultado = valor * euroEmDolar;
    } else if (_dropdownDeController == 'euro' &&
        _dropdownParaControler == 'real') {
      resultado = valor * euroEmReal;
    } else if (_dropdownDeController == 'dolar' &&
        _dropdownParaControler == 'euro') {
      resultado = valor / euroEmDolar;
    } else if (_dropdownDeController == 'dolar' &&
        _dropdownParaControler == 'dolar') {
      resultado = valor;
    } else if (_dropdownDeController == 'dolar' &&
        _dropdownParaControler == 'real') {
      resultado = valor * dolarEmReal;
    } else if (_dropdownDeController == 'real' &&
        _dropdownParaControler == 'euro') {
      resultado = valor / euroEmReal;
    } else if (_dropdownDeController == 'real' &&
        _dropdownParaControler == 'dolar') {
      resultado = valor / dolarEmReal;
    } else if (_dropdownDeController == 'real' &&
        _dropdownParaControler == 'real') {
      resultado = valor;
    }

    setState(() {
      _resultado = 'Resultado: $resultado';
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: _titulo(),
      body: _corpo(),
    ));
  }

  _titulo() {
    return AppBar(
      title: const Text('Conversor'),
    );
  }

  _corpo() {
    return (Container(
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          _inputValor(),
          _dropdownDe(),
          _dropdownPara(),
          _buttonCalcular(),
          _result(),
        ],
      ),
    ));
  }

  _inputValor() {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: 'Valor',
      ),
      keyboardType: TextInputType.number,
    );
  }

  _dropdownDe() {
    return Container(
      child: DropdownButton<String>(
        value: _dropdownDeController,
        items: [
          DropdownMenuItem(
            value: '',
            child: Text('De: '),
          ),
          DropdownMenuItem(
            value: 'euro',
            child: Text('Euro'),
          ),
          DropdownMenuItem(
            value: 'dolar',
            child: Text('Dólar'),
          ),
          DropdownMenuItem(
            value: 'real',
            child: Text('Real'),
          ),
        ],
        onChanged: (String? value) {
          setState(() {
            _dropdownDeController = value!;
          });
        },
      ),
    );
  }

  _dropdownPara() {
    return Container(
      child: DropdownButton<String>(
        value: _dropdownParaControler,
        items: [
          DropdownMenuItem(
            value: '',
            child: Text('Para: '),
          ),
          DropdownMenuItem(
            value: 'euro',
            child: Text('Euro'),
          ),
          DropdownMenuItem(
            value: 'dolar',
            child: Text('Dólar'),
          ),
          DropdownMenuItem(
            value: 'real',
            child: Text('Real'),
          ),
        ],
        onChanged: (String? value) {
          setState(() {
            _dropdownParaControler = value!;
          });
        },
      ),
    );
  }

  _buttonCalcular() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(top: 16),
      child: RaisedButton(
        color: Color.fromARGB(255, 61, 189, 240),
        child: Text('Converter',
            style: TextStyle(color: Colors.white, fontSize: 15)),
        onPressed: () {
          _calcular();
        },
      ),
    );
  }

  _result() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(top: 16),
      child: Text(
        _resultado,
        textAlign: TextAlign.center,
      ),
    );
  }
}