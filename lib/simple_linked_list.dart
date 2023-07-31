class _Node{
  int? valeur;
  _Node? ref;
  _Node(this.valeur,this.ref);

  @override 
  String toString()=> "$valeur";
}

class SimpleLinkedList{
  _Node? first;

  void add(int element){ // ajout à la fin
    var node = _Node(element,null);
    var lastNode = _lastNode();
    if(lastNode == null){
      first = node;
    } else {
      lastNode.ref = node;
    }
  }

  void addAt(int index, int element){
    if(index < 0) throw ArgumentError.value(index);
    if(index > lastIndex()) throw IndexError.withLength(index, length());
    int ind = -1;
    if(first != null) ind ++;
    var node = first;
    while(node?.ref != null){
      if(index == ind){
        node?.ref = _Node(element,node.ref);
        break;
      }
      node = node?.ref;
      ind ++;
    }
  }

  void removeAt(int index){
    if(index < 0) throw ArgumentError.value(index);
    if(index > lastIndex()) throw IndexError.withLength(index, length());
    var currNode = _nodeAt(index);
    var nextNode = currNode?.ref;    
    var prevNode = index==0? first : _nodeAt(index-1);
    if(index == 0){
      first = nextNode;
    } else {
       prevNode?.ref = nextNode;
    }
   
    currNode?.ref = null;
    
  }

  _Node? _nodeAt(int index){
    if(index < 0) throw ArgumentError.value(index);
    if(index > lastIndex()) throw IndexError.withLength(index, length());
    int ind = -1;
    if(first != null) ind ++;
    var node = first;
    while(node?.ref != null){
      if(index == ind) break;
      node = node?.ref;
      ind ++;
    }
    return node;
  }

  int lastIndex(){
    int index = -1;
    if(first != null) index ++;
    var node = first;
    while(node?.ref != null){
      node = node?.ref;
      index ++;
    }
    return index;
  }

  int length()=> lastIndex() + 1;

   _Node? _lastNode(){
    var node = first;
    while(node?.ref != null){
      node = node?.ref;
    }
    return node;
   }

   @override
   String toString(){
    String r = "[";
    if(first != null) r += "$first,";
    var node = first;
    while(node?.ref != null){
      node = node?.ref;
      r += "$node,";
    }
    r = r.substring(0,r.length-1);
    r += "]";
    return r;
   }
}