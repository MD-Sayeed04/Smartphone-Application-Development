import 'dart:io';

void main() {
  File file = File('students.csv');
  
  // Writing CSV data
  List<List<String>> students = [
    ["Name", "Age", "Address"],
    ["Alice", "20", "123 Street"],
    ["Bob", "21", "456 Avenue"],
    ["Charlie", "19", "789 Road"]
  ];

  String csvData = students.map((row) => row.join(',')).join('\n');
  file.writeAsStringSync(csvData);

  print("CSV file created successfully");

  // Reading CSV data
  print("Reading CSV file:");
  String contents = file.readAsStringSync();
  print(contents);
}

    