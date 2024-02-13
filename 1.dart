import 'dart:io';

void main() {
  int n;

  print("ENTER ANY NUMBER");
  n = int.parse(stdin.readLineSync()!);

  if (n > 0) {
    print("NUMBER IS POSITIVE");
  } else {
    print("NUMBER IS NAGATIVE");
  }
}
