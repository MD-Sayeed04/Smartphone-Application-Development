import 'dart:io';

void main() {
  print("Enter first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Enter operator (+, -, *, /):");
  String? op = stdin.readLineSync();

  if (op == '+') {
    print("Result: ${num1 + num2}");
  } else if (op == '-') {
    print("Result: ${num1 - num2}");
  } else if (op == '*') {
    print("Result: ${num1 * num2}");
  } else if (op == '/') {
    if (num2 != 0) {
      print("Result: ${num1 / num2}");
    } else {
      print("Cannot divide by zero!");
    }
  } else {
    print("Invalid operator!");
  }
}
