/*
1.) Write a Dart Progaram to to print all negative elements in an array.
*/
 import 'dart:io';

void main() {
    List<int> myArr = [];
    stdout.write("Enter Array Size : ");
    int len = int.parse(stdin.readLineSync()!);
    myArr = List.generate(len, (i) {
      stdout.write("Enter the value for Element ${i+1} : ");
      int el = int.parse(stdin.readLineSync()!);
      myArr.add(el);
      return el;
    });
    int largest = myArray[0];
    myArr.forEach((element) {
      if(element>largest){
        largest = element;
      }
    });
    print("The Largest Element: $largest");
}
