/*
4.) Write a dart progaram to addition of two matrices of dimenstion 3*3.
*/

import 'dart:io';

void main() {
  List<List<int>> x = [
    [11, 12, 13],
    [14, 15, 16],
    [17, 18, 19],
  ];
  List<List<int>> y = [
    [11, 12, 13],
    [14, 15, 16],
    [17, 18, 19],
  ];

  for (var i = 0; i < 3; i++) {
    for (var j = 0; j < 3; j++) {
      stdout.write('Enter element of a[$i][$j] : ');
      int val = int.parse(stdin.readLineSync()!);
      x[i][j] = val;
    }
  }

  for (var i = 0; i < 3; i++) {
    for (var j = 0; j < 3; j++) {
      stdout.write('Enter element of a[$i][$j] : ');
      int val = int.parse(stdin.readLineSync()!);
      x[i][j] = val;
    }
  }
  print("sum is to");
  for (var i = 0; i < 3; i++) {
    for (var j = 0; j < 3; j++) {
      stdout.write("${x[i][j] + y[i][j]} ");
      print('');
    }
  }
}
