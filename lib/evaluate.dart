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

  var ops2 = Stack<String>();
  var vals2 = Stack<double>();

 while(!ops.isEmpty()){
  ops2.push(ops.pop()!);
 }

 while(!vals.isEmpty()){
  vals2.push(vals.pop()!);
 }

 print("vals2 $vals2, ops2 $ops2");

 while(!ops2.isEmpty()){
      String op = ops2.pop() ?? "";
      double v = vals2.pop() ?? 0;
      if(op == "+") {
        v = v +(vals2.pop() ?? 0);
      } else if(op == "-") {
        v = v -(vals2.pop() ?? 0) ;
      } else if(op == "*") {
        v = v * (vals2.pop() ?? 0) ;
      } else if(op == "/") {
        v = v /(vals2.pop() ?? 0) ;
      }
      vals2.push(v);
  }
  ret = vals2.pop() ?? 0; 
  
  return ret;
}