import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home ({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  String _dropdownSexController = 'Escolha';
  String _dropdownSchoolController = 'Escolha';
  double _sliderController = 0;
  bool _checkboxController = false;

  String _textoResultado = "";

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: (AppBar(
          title: const Text('App 07 - Abertura Da Conta Bancária'),
          backgroundColor: Colors.red)),
      body: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: [
              _inputName(),
              _inputAge(),
              _sexDropdown(),
              _schoolDropdown(),
              _slider(),
              _checkbox(),
              _button(),
              _textResult()
            ],
          )),
    )); 
  }

  _inputName() {
    return TextField(
      controller: _nameController,
      decoration: InputDecoration(
        labelText: 'Nome',
      ),
    );
  }

  _inputAge() {
    return TextField(
        controller: _ageController,
        decoration: InputDecoration(
          labelText: 'Idade',
        ));
  }

  _sexDropdown() {
    return Container(
      width: double.maxFinite,
      child: DropdownButton<String>(
        value: _dropdownSexController,
        items:
            <String>['Selecione', 'Feminino', 'Masculino'].map((String value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: new Text(value),
          );
        }).toList(),
        onChanged: (String? value) {
          setState(() {
            _dropdownSexController = value!;
          });
        },
      ),
    );
  }

  _schoolDropdown() {
    return Container(
      width: double.maxFinite,
      child: DropdownButton<String>(
        value: _dropdownSchoolController,
        items: <String>[
          'Escolha',
          'Ensino Superior Incompleto',
          'Ensino Superior completo',
          'Ensino Médio Incompleto',
          'Ensino Médio Completo',
          'Ensino Fundamental Incompleto',
          'Ensino Fundamental Completo'
        ].map((String value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: new Text(value),
          );
        }).toList(),
        onChanged: (String? value) {
          setState(() {
            _dropdownSchoolController = value!;
          });
        },
      ),
    );
  }

  _slider() {
    return Slider(
      value: _sliderController,
      min: 1,
      max: 90,
      divisions: 8,
      label: '${_sliderController.round()}',
      onChanged: (double value) {
        setState(() {
          _sliderController = value;
        });
      },
    );
  }

  _checkbox() {
    return CheckboxListTile(
      title: const Text('Brasileiro: '),
      value: _checkboxController,
      onChanged: (bool? value) {
        setState(() {
          _checkboxController = value!;
        });
      },
    );
  }

  _button() {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      width: double.maxFinite,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.black,
        padding: EdgeInsets.all(15),
        child: const Text('Confirmar'),
        onPressed: () {
          _textoResultado =
              "Dados informados: \n Nome: ${_nameController.text}\n Idade: ${_ageController.text}\n Sexo: ${_dropdownSexController}\n Ensino: ${_dropdownSchoolController}\n Nota: ${_sliderController.round()}\n Brasileiro: ${_checkboxController}";
          setState(() {});
        },
      ),
    );
  }

  _textResult() {
    return Container(
      padding: const EdgeInsets.only(top: 17),
      width: double.maxFinite,
      child: Text(
        _textoResultado,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }
}