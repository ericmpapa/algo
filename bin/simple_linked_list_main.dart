import 'package:algorithms/simple_linked_list.dart';
import 'package:algorithms/stdout.dart' as stdout;
void main(){
  stdout.println("Test Liste Simplement Chaînée");
  stdout.println("-----------------------------");
  var liste = SimpleLinkedList();
  liste.add(1); // index 0
  liste.add(1); // index 1
  liste.add(4); // index 2
  liste.add(9); // index 3
  liste.addAt(1, 7);
  liste.removeAt(2);

  stdout.println("ma liste vaut $liste");
}