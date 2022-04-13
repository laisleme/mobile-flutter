
void main() {
  Pessoa n1 = Pessoa("Ana Carolina", 29);
  Pessoa n2 = Pessoa("Clio", 28);
  Pessoa n3 = Pessoa("João", 20);
  Pessoa n4 = Pessoa("Isabela", 19);
  Pessoa n5 = Pessoa("Vinicius", 27);

  final pessoas = [n1, n2, n3, n4, n5];

  for (Pessoa p in pessoas) {
    print(" Aluno: ${p.nome}, ${p.idade} anos");
  }
}

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  String toString() {
    return "$nome, $idade anos";
  }
}
