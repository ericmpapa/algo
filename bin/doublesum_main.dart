import 'package:algorithms/doublesum.dart' as doublesum;
import 'package:algorithms/stdout.dart' as stdout;
import 'package:algorithms/stdin.dart' as stdin;

void main() {
  stdout.println("Execution de l'algorithme ThreeSum");
  stdout.println("----------------------------------");
  stdout.println("Lecture des inputs");
  Stopwatch timer = Stopwatch();
  timer.start();
  var inputs = stdin.readInts();
  stdout.println("resultat: ${doublesum.count(inputs)}");
  timer.stop();
  stdout.println("temps écoulé: ${timer.elapsed}");
}
