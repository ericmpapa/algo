import 'dart:math';

class Coord{
  final double latitude;
  final double longitude;

  Coord(this.latitude,this.longitude);

  double distance(Coord ref) => 6371 * acos(sin(latitude * pi/180)*sin(ref.latitude * pi/180)+cos(latitude * pi/180)*cos(ref.latitude*pi/180)*cos((longitude-ref.longitude)*pi/180));

  @override
  String toString()=> "$latitude $longitude";
}