import 'package:algorithms/quick_sort.dart' as quick_sort;
import 'package:algorithms/stdout.dart' as stdout;
import 'package:algorithms/stdin.dart' as stdin;
import 'package:algorithms/search.dart' as search;

void main() {
  stdout.println("Execution de l'algorithme de tri rapide");
  stdout.println("---------------------------------------");
  stdout.println("Lecture des inputs");
  
  var inputs = stdin.readInts();
  /*print("tableau non trié");
  print("----------------");
  print(inputs);*/
  quick_sort.sort(inputs);
  
  stdout.println("l'index de 50 dans le tableau vaut : ${search.binarySearch(inputs, 50, 0)}");
  /*("tableau trié");
  print("------------");
  print(inputs);*/
}
