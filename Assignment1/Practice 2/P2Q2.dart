import 'dart:io';

void main() {
  print("Enter a character:");
  String? ch = stdin.readLineSync();

  if (ch == null || ch.isEmpty) {
    print("Please enter a character.");
  } else {
    String c = ch.toLowerCase();

    if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
      print("$c is a vowel.");
    } else {
      print("$c is a consonant.");
    }
  }
}