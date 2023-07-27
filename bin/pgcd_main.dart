import 'package:algorithms/stdout.dart' as stdout;
import 'package:algorithms/pgcd.dart' as pgcd;

void main(){
  stdout.println("Calcul du nième terme de fibonacci");
  stdout.println("----------------------------------");
  var a = 10;
  var b = 6;
  stdout.println("le pgcd de $a et $b vaut ${pgcd.pgcd(a,b)}");
}