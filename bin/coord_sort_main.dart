import 'dart:math';

void main() {
  // Origine (latitude:1.5609,longitude: 30.2551) 

  var d = 6371 *
      acos(sin(1.5609 * pi / 180) * sin(1.5603 * pi / 180) +
          cos(1.5609 * pi / 180) *
              cos(1.5603 * pi / 180) *
              cos((30.2533 - 30.2551) * pi / 180));

  print("distance:$d");
}
