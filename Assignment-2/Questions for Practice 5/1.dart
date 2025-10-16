import 'dart:io';

void main() {
  File file = File('hello.txt');
  file.writeAsStringSync("Abu Sayem Rabbi");
  String txt = file.readAsStringSync();
  print(txt);
}
