import 'package:algorithms/btree.dart';
import 'package:algorithms/stdout.dart' as stdout;
import 'package:sprintf/sprintf.dart';
void main(){
  stdout.println("Test Arbre général");
  stdout.println("------------------");
  var btree = BTree.leaf("root", "racine");
  btree.setLeft("root", "hello", "salut");
  btree.setRight("root", "night", "nuit");

  btree.setLeft("night", "day", "jour");
   btree.setLeft("day", "day one", "jour un");
  print(btree);
}