import 'package:algorithms/stdrandom.dart' as stdrandom;
import 'package:algorithms/stdout.dart' as stdout;
void main(){
  double orLat = 1.5609;
  double orLong = 30.2551;
  for(int i=0;i<325;i++){
    var lat = stdrandom.randomDouble(-0.0062,0.0062);
    var long = stdrandom.randomDouble(-0.0071,0.0071);
    stdout.println("${(lat+orLat).toStringAsFixed(4)} ${(long+orLong).toStringAsFixed(4)}");
  }
}