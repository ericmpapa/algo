import 'package:algorithms/stack.dart';
import 'package:algorithms/stdout.dart' as stdout;
void main(){
  stdout.println("Test Liste Simplement Chaînée");
  stdout.println("-----------------------------");
  var stack = Stack<int>();
  stack.push(1);
  stack.push(7);
  stack.push(8);
  stack.push(2);

  stdout.println("ma pile vaut $stack");
  var mavar = stack.pop();
  stdout.println("mavar vaut $mavar et la pile vaut $stack");

}