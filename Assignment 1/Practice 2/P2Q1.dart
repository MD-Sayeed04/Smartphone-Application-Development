import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int? num = int.tryParse(stdin.readLineSync()!);

  if (num == null) {
    print("Invalid input! Please enter a valid number.");
    return;
  }

  if (num % 2 == 0) {
    print("$num is even.");
  } else {
    print("$num is odd.");
  }
}

