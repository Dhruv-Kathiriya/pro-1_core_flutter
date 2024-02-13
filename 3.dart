void main() {
  List a = [
    [1, 2, 3],
    [4, 5, 6]
  ];
  List b = [
    [5, 5, 5],
    [5, 5, 5]
  ];
  List c = [
    [0, 0, 0],
    [0, 0, 0]
  ];

  for (int i = 0; i <= 2; i++) {
    for (int j = 0; j <= 2; j++) {
      c[i][j] = a[i][j] + b[i][j];
    }
  }

  print("$c");
}
