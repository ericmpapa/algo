import 'package:algorithms/stdout.dart' as stdout;
import 'package:algorithms/stdin.dart' as stdin;
import 'package:algorithms/search.dart' as search;
void main(){
  stdout.println("Recherche par force brute");
  stdout.println("-------------------------");
  var inputs = stdin.readInts();
  var criteria = 50;
  stdout.println("L'index de $criteria dans le tableau vaut ${search.bruteForceSearch(inputs, criteria)}");
}