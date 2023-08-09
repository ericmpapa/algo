import 'package:algorithms/stdout.dart' as stdout;
import 'package:algorithms/evaluate.dart' as ev;

void main(){
  stdout.println("Calcul expression");
  stdout.println("-----------------");
  var testExprss = "((1+2)+2)";
  stdout.println("$testExprss = ${ev.evaluate(testExprss)}");
}