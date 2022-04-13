
void main() {
  ContaCorrente conta1 = ContaCorrente("Aline", 2005);
  ContaCorrente conta2 = ContaCorrente("Junior", 2000);
  ContaCorrente conta3 = ContaCorrente("Viviane", 1999);

  final ContaCorrentes = [conta1, conta2, conta3];

  print("Lista: $ContaCorrentes, length: ${ContaCorrentes.length}");

  for (ContaCorrente c in ContaCorrentes) {
    print(c.dadosContaCorrente());
  }
}

class Conta {
  String nome;

  Conta(this.nome);

  String dadosContaCorrente() {
    return nome;
  }
}

class ContaCorrente extends Conta {
  int ano;

  ContaCorrente(nome, this.ano) : super(nome);

  String toString() {
    return "$nome - $ano";
  }

  @override
  String dadosContaCorrente() {
    return "Cliente: $nome  Abertura da conta: $ano";
  }
}
