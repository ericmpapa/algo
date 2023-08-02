import 'package:algorithms/coord.dart';
import 'package:algorithms/selection_sort.dart' as selection_sort;
import 'package:algorithms/stdout.dart' as stdout;
import 'package:algorithms/stdin.dart' as stdin;

void main() {
  stdout.println("Execution de l'algorithme de Tri par séléction des coordonnées");
  stdout.println("--------------------------------------------------------------");
  stdout.println("Lecture des inputs");
  Stopwatch timer = Stopwatch();
  timer.start();
  var inputs = stdin.readCoords();
  /*print("tableau non trié");
  print("----------------");
  print(inputs);*/
  var origin = Coord(1.5609,30.2551);
  selection_sort.sortCoord(inputs,origin);
  timer.stop();
  stdout.println("temps écoulé: ${timer.elapsed}");
  ("tableau trié");
  print("------------");
  print(inputs);
}
