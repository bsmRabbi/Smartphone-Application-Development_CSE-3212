import 'dart:io';

void main() {
  File file = File('hello.txt');
  file.writeAsStringSync("\nSaif Hasan", mode: FileMode.append);
  String txt = file.readAsStringSync();
  print(txt);
}
