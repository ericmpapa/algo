import 'dart:io';
import 'package:sprintf/sprintf.dart';

void println(dynamic o) => stdout.write("$o\n");
void print(dynamic o) => stdout.write("$o");
void printf(String format, dynamic o) => print(sprintf(format, o));