import 'dart:io';
import 'dart:math';

double areaOfCircle(double radius) {
  return pi * radius * radius;
}

void main() {
  print("Enter radius of circle:");
  double r = double.parse(stdin.readLineSync()!);
  print("Area of circle: ${areaOfCircle(r)}");
}
