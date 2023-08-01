import 'package:algorithms/double_linked_list.dart';
import 'package:algorithms/stdout.dart' as stdout;
void main(){
  stdout.println("Test Liste Doublement Chaînée");
  stdout.println("-----------------------------");
  var liste = DoubleLinkedList<int>();
  liste.add(1); // index 0
  liste.add(2); // index 1
  liste.add(6); // index 2
  liste.add(5); // index 3

  liste.addAt(1, 7);

  stdout.println("ma liste vaut $liste");
}