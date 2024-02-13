import 'dart:io';

void main() {
  List<int> allNumbers = [];

  print("Enter any 10 numbers: ");

  for (int i = 0; i < 10; i++) {
    String userInput = stdin.readLineSync()!;
    int number = int.parse(userInput);
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
