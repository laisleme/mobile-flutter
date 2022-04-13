void main() {
 Pessoa n1 = Pessoa("Ana Carolina", 29, "F");
  Pessoa n2 = Pessoa("Clio", 28, "F");
  Pessoa n3 = Pessoa("João", 20, "M");
  Pessoa n4 = Pessoa("Isabela", 19, "F");
  Pessoa n5 = Pessoa("Vinicius", 27, "M");

  final pessoas = [n1, n2, n3, n4, n5];

  for (Pessoa p in pessoas) {
    if (p.genero == "F") {
      print(" Aluno: ${p.nome}, ${p.idade} anos, gênero feminino");
    }
  }
}

class Pessoa {
  String nome;
  int idade;
  String genero;

  Pessoa(this.nome, this.idade, this.genero);
}
