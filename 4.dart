/*
3.) Write a Progaram to insert,Delete,Upadate,and View Oprestion on the elements in an array using menu driven progaramming approch. 
*/


import 'dart:io';

void main() {
  var array = [1, 2, 3, 4];
  List myArray = array.toList();
  int choice;

  do {
    
    print("press 1 to add  element   ");
    print("press 2  Update  element   ");
    print("press 3 to Remove  element  ");
    print("press 4 to View  elements   ");
    print("press 0 to Exit ");
    stdout.write("Enter Your Choice : ");
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write("add Element  : ");
        int addVar = int.parse(stdin.readLineSync()!);
        myArray.add(addVar);
        print(myArray);
        break;
      case 2:
        stdout.write(" Update  Elements: ");
        int index = int.parse(stdin.readLineSync()!);
        print("");
        stdout.write("Enter the Element  : ");
        int newElements = int.parse(stdin.readLineSync()!);
        myArray[index] = newElements;
        print(myArray);
        break;
      case 3:
        stdout.write(" Remove Elements : ");
        int removeVar = int.parse(stdin.readLineSync()!);
        myArray.remove(removeVar);
        print(myArray);
        break;
      case 4:
        stdout.write(" Viewing Elements  : ");
        myArray.forEach((element) {
          stdout.write("$element  ");
        });
        break;
      case 0:
        print("Exiting...");
        break;
      default:
        print("Invalid Choice!!");
    }
  } while (choice != 0);
}
