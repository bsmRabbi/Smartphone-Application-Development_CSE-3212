double areaCircle(int r) {
  double pi = 3.1416;
  return pi * r * r;
}

void main() {
  int r = 4;
  print("Area: ${areaCircle(r)}");
}
