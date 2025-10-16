import 'dart:io';

void main() {
  List<int> expenses = [];
  print("Enter expenses: ");
  for (int i = 0; i < 5; i++) {
    int? number = int.parse(stdin.readLineSync()!);
    expenses.add(number);
  }
  int total = 0;
  for (int exp in expenses) {
    total += exp;
  }
  print("Total expenses: $total");
}
