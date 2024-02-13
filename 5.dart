import 'dart:io';

void main() {
  int choice, x, y, sum;

  print("press 1 for sum of all elements..");
  print("press 2 for rowsum..");
  print("press 3 for colom sum..");
  print("press 4 for daigonal..");
  print("press 5 for anti daigonal..");
  print("press 6 for exit progaram..");

  stdout.write("Enter your choice :- ");
  choice = int.parse(stdin.readLineSync()!);

  List a = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  List b = [
    [5, 5, 5],
    [5, 5, 5],
    [5, 5, 5]
  ];
  List c = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ];
  switch (choice) {
    case 1:
      for (int i = 0; i <= 2; i++) {
        for (int j = 0; j <= 2; j++) {
          c[i][j] = a[i][j] + b[i][j];
        }
      }

      print("$c");
      break;
    case 2:
      stdout.write("Enter your  row number ");
      x = int.parse(stdin.readLineSync()!);
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          if (i == x) {
            sum = a[x][j] + b[x][j];
            print("$sum");
          }
        }
      }
      break;

    case 3:
      stdout.write("Enter your  colom number ");
      y = int.parse(stdin.readLineSync()!);
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          if (i == y) {
            sum = a[i][y] + b[i][y];
            print("$sum");
          }
        }
      }
      break;

    case 4:
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          if (i == j) {
            sum = a[i][j] + b[i][j];
            print("$sum");
          }
        }
      }
      break;

    case 5:
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          if (i + j == a[i][j] - 1) {
            sum = a[i][j] + b[i][j];
            print("$sum");
          }
        }
      }
      break;

    case 6:
      stdout.write("data finish......");
      break;
    default:
      stdout.write("invlid input....");
      break;
  }
}
