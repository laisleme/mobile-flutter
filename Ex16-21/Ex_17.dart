
import 'dart:math';

void main() {
  var lista = [];
  Random random = new Random();
  for (int i = 0; i <= 9; i++) {
    lista.add(random.nextInt(100));
  }
  print(lista);
  print(lista.last);
}
