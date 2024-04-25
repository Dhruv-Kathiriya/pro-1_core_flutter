/*
4.) Write a dart progaram to addition of two matrices of dimenstion 3*3.
*/

 import 'dart:io';

void main() {
  stdout.write("Enter Row of Numbers: ");
  int row = int.parse(stdin.readLineSync()!);
  print("");
  stdout.write("Enter Column of Number : ");
  int col = int.parse(stdin.readLineSync()!);
  List<List<int>> myArray1 = List.generate(row, (i) {
    return List.generate(col, (j) {
      stdout.write("Enter value for element ${[i]} ${[j]}: ");
      return int.parse(stdin.readLineSync()!);
    });
  });
  List<List<int>> myArray2 = List.generate(row, (i) {
    return List.generate(col, (j) {
      stdout.write("Enter value for element ${[i]} ${[j]}: ");
      return int.parse(stdin.readLineSync()!);
    });
  });
  print("Array 1 : ");
  myArray1.forEach((element) {
    stdout.write("$element ");
    print("");
  });
  print("Array 2 :");
  myArray2.forEach((element) {
    stdout.write("$element ");
    print("");
  });
  print("Array 1 + Array 2 :");
  List<List<int>> myArray3 = List.generate(row, (i) {
    return List.generate(col, (j) {
      return myArray1[i][j] + myArray2[i][j];
    });
  });
  myArray3.forEach((element) {
    stdout.write("$element ");
    print("");
  });
}
