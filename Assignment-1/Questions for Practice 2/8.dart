import 'dart:io';

void main() {
  do {
    print("Enter first number: ");
    double num1 = double.parse(stdin.readLineSync()!);

    print("Enter operator (+, -, *, /): ");
    String op = stdin.readLineSync()!;

    print("Enter second number: ");
    double num2 = double.parse(stdin.readLineSync()!);

    double result;

    if (op == '+') {
      result = num1 + num2;
    } else if (op == '-') {
      result = num1 - num2;
    } else if (op == '*') {
      result = num1 * num2;
    } else if (op == '/') {
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("Error: Division by zero");
        return;
      }
    } else {
      print("Invalid operator");
      return;
    }
    print("Result: $num1 $op $num2 = $result");
  } while (true);
}
