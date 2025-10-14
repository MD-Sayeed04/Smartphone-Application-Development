double maxNumber(double a, double b, double c) {
  double max = a;
  if (b > max) max = b;
  if (c > max) max = c;
  return max;
}

void main() {
  print("Largest number: ${maxNumber(10, 20, 15)}");
}
