import 'dart:io';

void main() {
  File file = File('hello.txt');
  String txt = file.readAsStringSync();
  File file2 = File('hello_copy.txt');
  file2.writeAsStringSync(txt);
  String txt2 = file2.readAsStringSync();
  print(txt2);
}
