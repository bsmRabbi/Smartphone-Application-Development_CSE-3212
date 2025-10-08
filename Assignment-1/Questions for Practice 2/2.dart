import 'dart:io';

void main() {
  print("Enter a character: ");
  String char = stdin.readLineSync()!;

  if (char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u') {
    print("$char is a vowel");
  } else {
    print("$char is a consonant");
  }
}
