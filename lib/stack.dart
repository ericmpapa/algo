import 'package:algorithms/simple_linked_list.dart';

class Stack<T>{
  var list = SimpleLinkedList<T>();
  
  void push(T element){
    if(list.isEmpty()) list.add(element);
    else list.addAt(0, element);
  }

  T? pop(){
    var ret = list.elementAt(0);
    list.removeAt(0);
    return ret;
  }

  @override
  String toString() => list.toString();
}