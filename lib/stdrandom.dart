import 'dart:math';

int randomUnsignedInt(int max) => Random().nextInt(max);
int randomSignedInt(max) => ((Random().nextInt(1)/-1) as int) * Random().nextInt(max);
