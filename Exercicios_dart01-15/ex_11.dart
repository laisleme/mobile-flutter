void main() {
  for (int multiplicando = 1; multiplicando <= 10; multiplicando++) {
    print("\n\nTabuada do número $multiplicando");
    for (int contador = 1; contador <= 10; contador++) {
      print("$multiplicando * $contador = ${multiplicando * contador}");
    }
  }
}
