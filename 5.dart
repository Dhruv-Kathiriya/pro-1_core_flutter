/*
5). write a progaram to find below mentioned operation on the 3*3 array using menu-driven progaramimng approch.
*/

import 'dart:io';
void main() {
    stdout.write("Enter Row : ");
  int row = int.parse(stdin.readLineSync()!);
  print("");
  stdout.write("Enter Column Number : ");
  int col = int.parse(stdin.readLineSync()!);
  List<List<int>> myArray = List.generate(row, (i) {
    return List.generate(col, (j) {
      stdout.write("Enter value for element ${[i]} ${[j]}: ");
      return int.parse(stdin.readLineSync()!);
    });
  });
    print("Array : ");
    myArray.forEach((element) {
      stdout.write("$element ");
      print("");
    });
    int choice;
    do{
      print("Press 1 for SUM OF ALL ELEMENTS : ");
      print("Press 2 for SUM OF ANY SPECIFIC ROW : ");
      print("Press 3 for SUM OF ANY SPECIFIC COLUMN : ");
      print("Press 4 for SUM OF DIAGONAL ELEMENT : ");
      print("Press 5 for SUM OF ANTI-DIAGONAL ELEMENT : ");
      print("Press 6 for EXITING THE CODE : ");
      print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
      stdout.write("Enter your Choice : ");
    choice = int.parse(stdin.readLineSync()!);
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    switch (choice) {
      case 1:
        int sum = 0;
        for (int i = 0; i < myArray.length; i++) {
          for (int j = 0; j < myArray.length; j++) {
            sum += myArray[i][j];
          }
        }
        print("The SUM of all the elements in the Array are : $sum");
        print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        break;
      case 2:
        print("The SUM of the ROW from the Array is : ");
        stdout.write("Enter the row number : ");
        int rowNum = int.parse(stdin.readLineSync()!);
        if (rowNum > myArray.length) {
          print("Invalid row number");
          print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
          break;
        }
        int rowSum = 0;
        for (int j = 0; j < myArray[rowNum - 1].length; j++) {
          rowSum += myArray[rowNum - 1][j];
        }
        print("The Sum of Row $rowNum is : $rowSum");
        print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        break;
      case 3:
        print("The SUM of the COLUMN from the Array is : ");
        stdout.write("Enter the column number : ");
        int colNum = int.parse(stdin.readLineSync()!);
        if (colNum > myArray[0].length) {
          print("Invalid column number");
          print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
          break;
        }
        int colSum = 0;
        for (int i = 0; i < myArray.length; i++) {
          colSum += myArray[i][colNum - 1];
        }
        print("The sum of column $colNum is : $colSum");
        print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        break;
      case 4:
        int diagSum = 0;
        for (int i = 0; i < myArray.length; i++) {
          diagSum += myArray[i][i];
        }
        print("The SUM of all the DIAGONAL elements in the Array is : $diagSum");
        print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        break;
      case 5:
        int antiDiagSum = 0;
        for (int i = 0; i < myArray.length; i++) {
          antiDiagSum += myArray[i][myArray[i].length - 1 - i];
        }
        print("The Sum of all the ANTI-DIAGONAL elements in the Array is : $antiDiagSum");
        print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        break;
      case 6:
        print("Exiting the MENU-DRIVEN CODE..");
        return;
      default:
        print("Invalid Choice Input!!");
    }
    }while(choice!=6);
  }
