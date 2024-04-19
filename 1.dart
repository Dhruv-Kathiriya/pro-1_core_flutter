/*
1.) Write a Dart Progaram to to print all negative elements in an array.
*/
import 'dart:io';
void main(){
  dynamic array = [];
  List myArr = array.toList();
  stdout.write("Enter array size : ");
  int len = int.parse(stdin.readLineSync()!);
  for(int i = 1 ; i <= len ; i++){
    stdout.write("Enter Element $i : ");
    int el = int.parse(stdin.readLineSync()!);
    myArr.add(el);
  }
  print("Array Element: ");
  myArr.forEach((element) {
      stdout.write("$element   ");
  });
  print("");
  print("Negative Elements  : ");
  myArr.forEach((element) {
    if(element<0){
      stdout.write("$element   ");
}
});
}
