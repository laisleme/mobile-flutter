class AgroYoInput {
  int id;
  String nome;
  String fornecedor;
  double valor;

  AgroYoInput (
      {required this.id,
      required this.nome,
      required this.fornecedor,
      required this.valor});

  AgroYoInput.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    fornecedor = json['fornecedor'];
    quantidade = json['quantidade'];
  }

  set quantidade(int? quantidade) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['fornecedor'] = this.fornecedor;
    data['quantidade'] = this.quantidade;
    return data;
  }
}
