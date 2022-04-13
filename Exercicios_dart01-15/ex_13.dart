void main() {
  int fibonacci(int n) => n <= 2 ? 1 : fibonacci(n - 2) + fibonacci(n - 1);

  String output = "";

  for (int i = 1; i <= 30; ++i) {
    output += fibonacci(i).toString() + ", ";
  }

  print(output + "...");
}
