/*
3.) Write a Progaram to insert,Delete,Upadate,and View Oprestion on the elements in an array using menu driven progaramming approch. 
*/

import 'dart:io';

void main() {
  stdout.write("Enter size of in Array : ");
  int size = int.parse(stdin.readLineSync()!);

  List<int> a = List.generate(size, (index) => index);

  for (var i = 0; i < size; i++) {
    stdout.write("Enter element of $i : ");
    int val = int.parse(stdin.readLineSync()!);
    a[i] = val;
  }

  print("1. Insert Value");
  print("2. Delete Value");
  print("3. Update Value");
  print("4. View Value");
  print("5. Exit");

  stdout.write("Enter choice : ");
  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      stdout.write('insert value :');
      int i = int.parse(stdin.readLineSync()!);
      stdout.write('Enter value : ');
      choice = int.parse(stdin.readLineSync()!);
      a.insert(i, choice);
      break;
    case 2:
      stdout.write('remove Value : ');
      choice = int.parse(stdin.readLineSync()!);
      a.remove(choice);
      break;

    case 3:
      stdout.write(' update value : ');
      int i = int.parse(stdin.readLineSync()!);
      stdout.write('Enter value : ');
      choice = int.parse(stdin.readLineSync()!);
      a[i] = choice;
      break;

    case 4:
      print('List : $a');

    default:
      print('Invalid choice!!');
  }
}
