import 'dart:math';

int randomInt(int min,int max) => Random().nextInt(max) + min;
double randomDouble(double min,double max) => Random().nextDouble() * (max-min) + min;