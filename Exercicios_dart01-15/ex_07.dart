void main() {
  double peso = 60;
  double altura = 1.63;

  double pesoIdeal = peso / (altura * altura);

  if (pesoIdeal >= 18.5 && pesoIdeal <= 24.9) {
    print('Peso ideal');
  } else {
    print('Peso não ideal');
  }
}
