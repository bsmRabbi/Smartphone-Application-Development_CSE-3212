import 'dart:io';

void main() {
  File file = File('hello.txt');
  print('File path: ${file.path}');
  print('File absolute path: ${file.absolute.path}');
}
