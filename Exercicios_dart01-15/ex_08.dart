void main() {
  double a = 8;
  double b = 8;
  double c = 8;

  if ((a + b < c) || (a + c < b) || (b + c < a)) {
    print("Não é um triangulo");
  } else {
    if (a == b && b == c) {
      print("Triângulo Equilátero");
    } else if ((a == b && b != c) || (a == c && c != b) || (b == c && c != a)) {
      print("Triângulo Isósceles");
    } else {
      print("Triângulo Escaleno");
    }
  }
}
