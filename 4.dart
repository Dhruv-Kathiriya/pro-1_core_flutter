/*
3.) Write a Progaram to insert,Delete,Upadate,and View Oprestion on the elements in an array using menu driven progaramming approch. 
*/


import 'dart:io';
void main() {
  List myArr = [];
  print("Enter your num: ");
  myArr = List.generate(3, (i) {
      stdout.write("Enter the value for Element ${i+1} : ");
      int elements = int.parse(stdin.readLineSync()!);
      myArr.add(elements);
      return elements;
    });
  int choice;
  do {
    print("");
    print("Enter 1 to Enter an element in the Array  ");
    print("Enter 2 to Update an element in the Array  ");
    print("Enter 3 to Remove an element in the Array  ");
    print("Enter 4 to View the elements in the Array  ");
    print("Enter 0 to Exit ");
    print("");
    stdout.write("Enter Your Choice : ");
    choice = int.parse(stdin.readLineSync()!);
    print("");
    switch (choice) {
      case 1:
        stdout.write("Enter the Element you want to add in your Array : ");
        int addVar = int.parse(stdin.readLineSync()!);
        myArr.add(addVar);
        print("");
        print(myArr);
        print("");
        break;
      case 2:
        stdout.write("Enter the Element Index where you want to Update : ");
        int index = int.parse(stdin.readLineSync()!);
        print("");
        if(index>myArr.length){
          print("Index is Invalid!!");
          print("");
        }
        else{
          stdout.write("Enter the Element you want : ");
          int newEle = int.parse(stdin.readLineSync()!);
          myArr[index] = newEle;
          print(myArr);
          print("");
        }
        print("");
        break;
      case 3:
        stdout.write("Enter the Element you want to Remove : ");
        int removeVar = int.parse(stdin.readLineSync()!);
        myArr.remove(removeVar);
        print(myArr);
        print("");
        break;
      case 4:
        stdout.write("You are Viewing the List : ");
        myArr.forEach((element) {
          stdout.write("$element  ");
        });
        break;
      case 0:
        print("Exiting the Menu Driven Code...");
        break;
      default:
        print("Invalid Choice!!");
    }
  } while (choice != 0);
}
