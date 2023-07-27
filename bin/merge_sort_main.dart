import 'package:algorithms/merge_sort.dart' as merge_sort;
import 'package:algorithms/stdout.dart' as stdout;
import 'package:algorithms/stdin.dart' as stdin;

void main() {
  stdout.println("Execution de l'algorithme de tri fusion");
  stdout.println("----------------------------------");
  stdout.println("Lecture des inputs");
  Stopwatch timer = Stopwatch();
  timer.start();
  var inputs = stdin.readInts();
  print("tableau non trié");
  print("----------------");
  print(inputs);
  var sortedList = merge_sort.sort(inputs);
  timer.stop();
  stdout.println("temps écoulé: ${timer.elapsed}");
  ("tableau trié");
  print("------------");
  print(sortedList);
}
