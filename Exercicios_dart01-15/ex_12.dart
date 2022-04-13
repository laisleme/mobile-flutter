void main() {
  int x = 2;
  int a = 4;
  int b = 7;

  for (int i = b; i >= a; i--) {
    int calculo = x * i;
    print('$x x $i = $calculo');
  }
}
