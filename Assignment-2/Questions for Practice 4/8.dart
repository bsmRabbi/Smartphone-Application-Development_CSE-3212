import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("\n--- To-Do App ---");
    print("1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");
    stdout.write("Choose an option: ");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write("Enter task: ");
        String task = stdin.readLineSync()!;
        tasks.add(task);
        print(" Task added!");
        break;

      case 2:
        stdout.write("Enter task to remove: ");
        String task = stdin.readLineSync()!;
        if (tasks.remove(task)) {
          print(" Task removed!");
        } else {
          print("Task not found!");
        }
        break;

      case 3:
        print("\n Your Tasks:");
        if (tasks.isEmpty) {
          print("No tasks added yet.");
        } else {
          for (int i = 0; i < tasks.length; i++) {
            print("${i + 1}. ${tasks[i]}");
          }
        }
        break;

      case 4:
        print("Exiting...");
        return; // exits the while loop and program

      default:
        print("Invalid choice, try again!");
    }
  }
}
