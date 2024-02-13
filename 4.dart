import 'dart:io';

void main() {
  int Insert, Delete, Update, View, choice;

  print("press 1 for Insert..");
  print("press 2 for Delete..");
  print("press 3 for Update..");
  print("press 4 for View..");

  stdout.write("Enter your choice :- ");
  choice = int.parse(stdin.readLineSync()!);

  List<int> demo = [1, 2, 3];
  switch (choice) {
    case 1:
      demo.add(4);
      print("$demo");
      break;

    case 2:
      demo.remove(1);
      print("$demo");
      break;

    case 3:
      demo.replaceRange(1, 3, [2, 3]);
      print("$demo");
      break;

    case 4:
      demo.add(3);
      print("$demo");
      break;
    default:
      stdout.write("invlid choise...!!");
      break;
  }
}
