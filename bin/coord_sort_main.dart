import 'package:algorithms/coord.dart';
import 'package:algorithms/selection_sort.dart' as selection_sort;
import 'package:algorithms/stdout.dart' as stdout;
import 'package:algorithms/stdin.dart' as stdin;

void main() {
  
 
  var inputs = stdin.readCoords();
  /*print("tableau non trié");
  print("----------------");
  print(inputs);*/
  var origin = Coord(1.5609,30.2551);
  //selection_sort.sortCoord(inputs,origin);
  
  for(int i=0;i<inputs.length;i++){
    print(double.parse(inputs[i].distance(origin).toStringAsFixed(4)));
  }
}
