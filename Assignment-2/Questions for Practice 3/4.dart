import 'dart:math';

String generatePassword(int length) {
  const chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#\$%&!';
  //Random rnd = Random();
  return List.generate(
    length,
    (_) => chars[Random().nextInt(chars.length)],
  ).join();
}

void main() {
  print("Random Password: ${generatePassword(12)}");
}
