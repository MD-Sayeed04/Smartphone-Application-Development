import 'dart:math';

String generatePassword(int length) {
  const chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  Random rand = Random();
  String password = '';
  for (int i = 0; i < length; i++) {
    password += chars[rand.nextInt(chars.length)];
  }
  return password;
}

void main() {
  print("Random Password: ${generatePassword(8)}");
}
