import 'dart:io';

int readInt() => int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

double readDouble() => double.tryParse(stdin.readLineSync() ?? '0') ?? 0;

String readString() => stdin.readLineSync() ?? '';

List<int> readInts() {
  var list = <int>[];

  String? line = stdin.readLineSync();
  while (line != null) {
    list.add(int.parse(line));
    line = stdin.readLineSync();
  }

  return list;
}

List<double> readDoubles() {
  var list = <double>[];

  String? line = stdin.readLineSync();
  while (line != null) {
    list.add(double.parse(line));
    line = stdin.readLineSync();
  }

  return list;
}

List<String> readStrings() {
  var list = <String>[];

  String? line = stdin.readLineSync();
  while (line != null) {
    list.add(line);
    line = stdin.readLineSync();
  }

  return list;
}