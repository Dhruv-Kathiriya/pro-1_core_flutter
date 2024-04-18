import 'dart:io';

void main() {
  int i;

  print("Enter Number");
  i = int.parse(stdin.readLineSync()!);

  if (i > 0) {
    print("Number is POSITIVE");
  } else {
    print("Number is NAGATIVE");
  }
}
