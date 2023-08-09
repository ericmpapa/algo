import 'stack.dart';
double evaluate(String expression){ 
  double ret = 0;
  int offset = 0;
  var ops = Stack<String>();
  var vals = Stack<double>();
  print("expression: $expression");
  while(offset<expression.length){
    var s = expression.substring(offset,offset+1);
    if(s == "+" || s == "-" || s == "*" || s == "/"){
      ops.push(s);
    }
    else if (s == ")"){
      String op = ops.pop() ?? "";
      double v = vals.pop() ?? 0;
      if(op == "+") {
        v = (vals.pop() ?? 0) + v;
      } else if(op == "-") {
        v = (vals.pop() ?? 0)  - v;
      } else if(op == "*") {
        v = (vals.pop() ?? 0) * v;
      } else if(op == "/") {
        v = (vals.pop() ?? 0)  / v;
      }
      vals.push(v);

    } else if (s != "("){
      vals.push(double.parse(s));
    } 

    print("[DEBUG]: etape:$offset char:$s ops= $ops, vals= $vals");
    offset ++;
  } 
  ret = vals.pop()!;
  return ret;
}