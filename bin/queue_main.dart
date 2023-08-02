import 'package:algorithms/queue.dart';
import 'package:algorithms/stdout.dart' as stdout;
void main(){
  stdout.println("Test de Queue");
  stdout.println("-------------");
  var queue = Queue<int>();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(7);
  queue.enqueue(9);

  stdout.println("ma pile vaut $queue");
  var mavar = queue.dequeue();
  stdout.println("mavar vaut $mavar et la pile vaut $queue");

}