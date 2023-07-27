import 'package:algorithms/stdout.dart' as stdout;
import 'package:algorithms/fibonacci.dart' as fib;

void main(){
  stdout.println("Calcul du nième terme de fibonacci");
  stdout.println("----------------------------------");
  var n = 7;
  stdout.println("le $n ème terme de la suite vaut ${fib.fibonacci(n)}");
}