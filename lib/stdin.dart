import 'dart:io';
import 'package:algorithms/coord.dart';

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

List<Coord> readCoords() {
  var list = <Coord>[];

  String? line = stdin.readLineSync();
  while (line != null) {
    var coordlist = line.split(' ');
    var latitude = double.parse(coordlist[0]);
    var longitude = double.parse(coordlist[1]);
    list.add(Coord(latitude,longitude));
    line = stdin.readLineSync();
  }
  return list;
}