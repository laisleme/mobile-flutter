import 'package:flutter/material.dart' show AppBar, BuildContext, Color, Colors, EdgeInsets, ListView, Padding, Scaffold, SizedBox, State, StatefulWidget, Text, TextCapitalization, TextEditingController, TextInputType, Widget;
import 'package:flutter_application_/models/AgroYo_input.model.dart' show AgroYoInput;
import 'package:flutter_application_/services/api.service.dart' show ApiService;




class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var apiService = ApiService();

  TextEditingController _nomeController = new TextEditingController();

  TextEditingController _fornecedorController = new TextEditingController();

  TextEditingController _quantidadeController = new TextEditingController();

  TextEditingController _valorController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.4,
        title: Text("Cadastrar"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPInputLight(
              label: "Nome do produto",
              keyboard: TextInputType.text,
              password: false,
              controller: this._nomeController,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPInputLight(
              label: "Fornecedor do produto",
              keyboard: TextInputType.text,
              password: false,
              controller: this._fornecedorController,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPInputLight(
              label: "Quantidade do produto",
              keyboard: TextInputType.text,
              password: false,
              controller: this._quantidadeController,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPInputLight(
              label: "Valor do produto",
              keyboard: TextInputType.text,
              password: false,
              controller: this._valorController,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPButtonDark(
              label: "Cadastrar produto",
              callback: register(),
            ),
          ),
        ],
      ),
    );
  }

  register() {
    var id2 = null;
    var valor2 = null;
    var data = AgroYoInput(fornecedor: '', id: id2, nome: '', valor: valor2);

    if (this._nomeController.text != null || this._nomeController.text == "") {
      data.nome = this._nomeController.text;
    }

    if (this._fornecedorController.text != null ||
        this._fornecedorController.text == "") {
      data.fornecedor = this._fornecedorController.text;
    }

    if (this._quantidadeController.text != null ||
        this._quantidadeController.text == "") {
      data.quantidade = int?.tryParse(this._quantidadeController.text);
    }

    if (this._valorController.text != null ||
        this._valorController.text == "") {
      data.valor = double?.tryParse(this._valorController.text)!;
    }

    this.apiService.postInsumos(data);
  }

  BPInputLight({String? label, TextInputType? keyboard, required bool password, TextEditingController? controller, TextCapitalization? capitalization}) {}

  BPButtonDark({required String label, callback}) {}
}