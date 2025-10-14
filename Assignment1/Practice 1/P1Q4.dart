import 'dart:io';

void main() {
  print("Enter principal amount:");
  double p = double.parse(stdin.readLineSync()!);

  print("Enter time in years:");
  double t = double.parse(stdin.readLineSync()!);

  print("Enter rate of interest:");
  double r = double.parse(stdin.readLineSync()!);

  double si = (p * t * r) / 100;
  print("Simple Interest = $si");
}
