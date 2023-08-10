import 'package:algorithms/bst.dart';
import 'package:algorithms/stdout.dart' as stdout;
import 'package:algorithms/stdin.dart' as stdin;
void main(){
  stdout.println("Test de BST");
  stdout.println("-----------");
  stdout.println("Lecture des inputs");
  var inputs = stdin.readInts();
  var bst = BST<int>();

  for(int i=0;i<inputs.length;i++){
    bst.add(inputs[i],i);
  }
  var criteria = 50;
  print("l'index de $criteria vaut ${bst.get(criteria)}");
}