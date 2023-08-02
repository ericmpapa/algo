import 'package:algorithms/simple_linked_list.dart';

class Queue<T>{
  var list = SimpleLinkedList<T>();
  void enqueue(T element){
    if(list.isEmpty()) list.add(element);
    else list.addAt(0, element);
  }
  
  T? dequeue(){
    T? ret = list.last();
    list.removeAt(list.lastIndex());
    return ret;
  }
  
  @override
  String toString() => list.toString();
}