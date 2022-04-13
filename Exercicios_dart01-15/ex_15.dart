void main() {
  int n1 = 2;
  int soma = 3;
  print(n1);

  for (int i = 0; i <= 20; i++) {
    n1 = n1 + soma;
    print(n1);
    if (n1 > 100) {
      print("Por favor tente novamente");
      break;
    }
    soma = soma + 2;
  }
}
