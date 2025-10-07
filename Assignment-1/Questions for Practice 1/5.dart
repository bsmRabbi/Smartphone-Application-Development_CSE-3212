import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);
  int sqr = num * num;
  print("Square of $num is $sqr");
}
