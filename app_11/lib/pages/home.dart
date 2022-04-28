import 'package:flutter/material.dart';
import 'package:app_11/pages/sobre.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  String _dropdownSexController = 'Selecione';
  String _dropdownSchoolController = 'Selecione';
  double _sliderController = 0;
  bool _checkboxController = false;

  String _textoResultado = "";

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: (AppBar(
          title:
              const Text('App 11 - Abertura de Conta Bancária com duas Telas'),
          backgroundColor: Colors.green)),
      body: Container(
          margin: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
              _inputName(),
              _inputAge(),
              _sexDropdown(),
              _schoolDropdown(),
              _slider(),
              _checkbox(),
              _button(context),
            ]),
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
            <String>['Selecione', 'Masculino', 'Feminino'].map((String value) {
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
          'Selecione',
          'Ensino Fundamental Completo',
          'Ensino Fundamental Incompleto'
          'Ensino Médio Completo',
          'Ensino Médio Incompleto',
          'Ensino Superior Completo',
          'Ensino Superior Incompleto',
          
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
      min: 0,
      max: 100,
      divisions: 10,
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

  _button(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      width: double.maxFinite,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        padding: EdgeInsets.all(15),
        child: const Text('Confirmar'),
        onPressed: () {
          _open(context);
        },
      ),
    );
  }

  _open(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return Sobre(
          valueName: _nameController.text,
          valueAge: _ageController.text,
          valueSex: _dropdownSexController,
          valueSchool: _dropdownSchoolController,
          valueSlider: _sliderController,
          valueCheckbox: _checkboxController);
    }));
  }
}
