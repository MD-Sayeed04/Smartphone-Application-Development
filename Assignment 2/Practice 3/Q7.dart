import 'dart:io';
import 'dart:math';

double power(double base, double exponent) {
  return pow(base, exponent).toDouble();
}

void main() {
  print("Enter base:");
  double base = double.parse(stdin.readLineSync()!);
  print("Enter exponent:");
  double exponent = double.parse(stdin.readLineSync()!);
  print("$base ^ $exponent = ${power(base, exponent)}");
}
