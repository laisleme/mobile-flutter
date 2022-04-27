import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controllerValor = TextEditingController();
  String _dropdownDeController = '';
  String _dropdownParaControler = '';
  String _resultado = "";

  _calcular() {
    if (_controllerValor.text.isEmpty) {
      _resultado = "";
      return;
    }

    double euroDolar = 1.0825;
    double euroReal = 5.06;
    double dolarReal = 4.67;

    double valor = double.parse(_controllerValor.text);
    double resultado = 0;

    if (_dropdownDeController == 'euro' && _dropdownParaControler == 'euro') {
      resultado = valor;
    } else if (_dropdownDeController == 'euro' &&
        _dropdownParaControler == 'dolar') {
      resultado = valor * euroDolar;
    } else if (_dropdownDeController == 'euro' &&
        _dropdownParaControler == 'real') {
      resultado = valor * euroReal;
    } else if (_dropdownDeController == 'dolar' &&
        _dropdownParaControler == 'euro') {
      resultado = valor / euroDolar;
    } else if (_dropdownDeController == 'dolar' &&
        _dropdownParaControler == 'dolar') {
      resultado = valor;
    } else if (_dropdownDeController == 'dolar' &&
        _dropdownParaControler == 'real') {
      resultado = valor * dolarReal;
    } else if (_dropdownDeController == 'real' &&
        _dropdownParaControler == 'euro') {
      resultado = valor / euroReal;
    } else if (_dropdownDeController == 'real' &&
        _dropdownParaControler == 'dolar') {
      resultado = valor / dolarReal;
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
      title: const Text('App 10 - Conversor de Moedas - Euro, Dólar e Real'),
      backgroundColor: Colors.white,
    );
  }

  _corpo() {
    return (Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          _inputValor(),
          _dropdownDe(),
          _dropdownPara(),
          _buttonCalcular(),
          _textResultado(),
        ],
      ),
    ));
  }

  _inputValor() {
    return TextField(
      controller: _controllerValor,
      decoration: InputDecoration(
        labelText: 'Valor',
      ),
      keyboardType: TextInputType.number,
    );
  }

  _dropdownDe() {
    return Container(
      width: double.maxFinite,
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
      width: double.maxFinite,
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
        color: Colors.black,
        padding: EdgeInsets.all(16),
        child: Text('Converter',
            style: TextStyle(color: Colors.white, fontSize: 15)),
        onPressed: () {
          _calcular();
        },
      ),
    );
  }

  _textResultado() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(top: 15),
      child: Text(_resultado,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    );
  }
}
