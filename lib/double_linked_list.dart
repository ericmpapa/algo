class _Node<T>{
  T? value;
  _Node<T>? prevRef;
  _Node<T>? nextRef;
  _Node(this.value,this.prevRef,this.nextRef);

  @override
  String toString()=> "$value";
}

class DoubleLinkedList<T>{
  _Node<T>? first;

  void add(T element){ // ajout à la fin
    var node = _Node(element,null,null);
    var lastNode = _lastNode();
    if(lastNode == null){
      first = node;
    } else {
      lastNode.nextRef = node;
      node.prevRef = lastNode;
    }
  }

  void addAt(int index, T element){
    if(index < 0) throw ArgumentError.value(index);
    if(index > lastIndex()) throw IndexError.withLength(index, length());
    if(index == 0){
      var n = _Node(element,null,first);
      first = n;
      return;
    }
    int ind = -1;
    if(first != null) ind ++;
    var node = first;
    while(node?.nextRef != null){
      if(index == (ind+1)){
        var n = _Node(element,node,node?.nextRef);
        node?.nextRef?.prevRef = n;
        node?.nextRef = n;        
        break;
      }
      node = node?.nextRef;
      ind ++;
    }
  }

   int lastIndex(){
    int index = -1;
    if(first != null) index ++;
    var node = first;
    while(node?.nextRef != null){
      node = node?.nextRef;
      index ++;
    }
    return index;
  }

  int length()=> lastIndex() + 1;

  _Node<T>? _lastNode(){
    var node = first;
    while(node?.nextRef != null){
      node = node?.nextRef;
    }
    return node;
   }

  @override
  String toString(){
    String r = "[";
    if(first!=null) r+="$first,";
    var node = first;
    while(node?.nextRef != null){
      node = node?.nextRef;
      r += "$node,";
    }
    r = r.substring(0,r.length-1);
    r += "]";
    return r;
  }


}