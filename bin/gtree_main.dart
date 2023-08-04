import 'package:algorithms/gtree.dart';
import 'package:algorithms/stdout.dart' as stdout;
void main(){
  stdout.println("Test Arbre général");
  stdout.println("------------------");
  var gtree = GTree<int>(7);
  gtree.add(0, 5);
  gtree.add(0, 4);
  gtree.add(0, 9);

  gtree.add(3, 2);
  gtree.add(3, 1);

  stdout.println("mon arbre vaut $gtree");
}