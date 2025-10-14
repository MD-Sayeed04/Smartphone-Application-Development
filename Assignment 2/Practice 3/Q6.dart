

String reverseString(String str) {
  return str.split('').reversed.join('');
}

void main() {
  print("Enter a string:");
  String input = stdin.readLineSync()!;
  print("Reversed string: ${reverseString(input)}");
}
