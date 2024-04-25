/*
1.) Write a Dart Progaram to to print all negative elements in an array.
*/
 import 'dart:io';
void main(){
  List myArr = [];
  stdout.write("Enter your array : ");
  int lenth = int.parse(stdin.readLineSync()!);
  myArr = List.generate(lenth, (i) {
      stdout.write("Enter the value for Element ${i+1} : ");
      int elements = int.parse(stdin.readLineSync()!);
      myArr.add(elements);
      return elements;
    });
  print("Elements in the Array are : ");
  myArr.forEach((element) {
      stdout.write("$element   ");
  });
  print("");
  print("--------Negative Elements------: ");
  myArr.forEach((element) {
    if(element<0){
      stdout.write("$element   ");
    }
  });
}
