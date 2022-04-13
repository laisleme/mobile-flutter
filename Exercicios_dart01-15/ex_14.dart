void main() {
  int a = 1;
  int b = 1;
  int c = 1;
  int bergamaschi;

  String output = "";
  String output2 = "";

  for (int i = 1; i <= 17; ++i) {
    bergamaschi = a + b + c;
    a = b;
    b = c;
    c = bergamaschi;
    output += bergamaschi.toString() + ", ";
  }

  a = 1;
  b = 1;
  c = 1;

  output2 += a.toString() + ", " + b.toString() + ", " + c.toString() + ", ";

  print(output2 + output + "...");
}
