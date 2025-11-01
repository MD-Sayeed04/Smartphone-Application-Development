import 'dart:io';

void main() {
  print("Enter a number as string:");
  String? input = stdin.readLineSync();

  int number = int.parse(input!);
  print("Converted to integer: $number");
}
