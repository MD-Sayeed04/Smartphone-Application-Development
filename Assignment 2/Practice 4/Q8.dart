import 'dart:io';

void main() {
  List<String> tasks = [];
  while (true) {
    print("\nTo-Do Menu:");
    print("1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");
    print("Enter your choice:");
    
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("Enter task to add:");
      String task = stdin.readLineSync()!;
      tasks.add(task);
      print("Task added!");
    } else if (choice == 2) {
      print("Enter task to remove:");
      String task = stdin.readLineSync()!;
      if (tasks.remove(task)) {
        print("Task removed!");
      } else {
        print("Task not found!");
      }
    } else if (choice == 3) {
      print("Your Tasks:");
      for (var task in tasks) {
        print("- $task");
      }
    } else if (choice == 4) {
      print("Exiting...");
      break;
    } else {
      print("Invalid choice!");
    }
  }
}
