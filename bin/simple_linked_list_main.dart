import 'package:algorithms/simple_linked_list.dart';
import 'package:algorithms/stdout.dart' as stdout;
void main(){
  stdout.println("Test Liste Simplement Chaînée");
  stdout.println("-----------------------------");
  var liste = SimpleLinkedList<String>();
  liste.add("lundi"); // index 0
  liste.add("mardi"); // index 1
  liste.add("mercredi"); // index 2
  liste.add("jeudi"); // index 3

  liste.removeAt(2);

  stdout.println("ma liste vaut $liste");
}