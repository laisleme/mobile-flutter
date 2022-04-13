
import 'dart:math';

void main() {
  var lista = [];
  Random random = new Random();
  for (int i = 0; i < 20; i++) {
    lista.add(random.nextInt(100));
  }
  print(lista);
  int numero = 2;
  for (int i = 0; i < lista.length; i++) {
    num calculo = numero * lista[i];
    lista[i] = calculo;
  }

  print(lista);
}
