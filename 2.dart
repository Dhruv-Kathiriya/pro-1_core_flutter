import 'dart:io';

void main() {
  List<int> allNumbers = [];
  int n;
  stdout.write("Enter any number choice : ");
  n = int.parse(stdin.readLineSync() ?? "0");

  for (int i = 0; i < n; i++) {
    String user = stdin.readLineSync()!;
    int number = int.parse(user);
    allNumbers.add(number);
  }

  int largestNumber = allNumbers[0];
  for (int i = 1; i < allNumbers.length; i++) {
    if (allNumbers[i] > largestNumber) {
      largestNumber = allNumbers[i];
    }
  }

  print('The largest number is: $largestNumber');
}
