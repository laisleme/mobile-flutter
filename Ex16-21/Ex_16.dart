import 'dart:math';

void main() {
  var lista = [];
  Random random = new Random();
  for (int i = 0; i <= 9; i++) {
    lista.add(random.nextInt(100));
  }

  print("Lista: $lista");

  for (int i = (lista.length - 1); i >= 0; i--) {
    print(" Numero: ${lista[i]}");
  }
}
