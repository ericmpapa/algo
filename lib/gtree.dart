import 'package:algorithms/simple_linked_list.dart';
import 'package:algorithms/stack.dart';

class _Node<T>{
  int key;
  T? value;
  SimpleLinkedList<_Node<T>> children = SimpleLinkedList();
  
  _Node(this.value,this.key);

  void add(int key,T element){
    children.add(_Node(element,key));
  }

  @override
  String toString()=> "{key:$key, value:$value, children:$children}";
}

class GTree<T>{
  _Node<T>? root;
  final _stack = Stack<_Node<T>?> ();

  GTree(T element){
    root ??= _Node(element,0);
  }

  void add(int parentKey,T element){
   var parent =  _getNode(parentKey);
   if(parent == null) ArgumentError.value(parentKey);
   else {
      parent.add(size(), element);
   }
  }

  int _countChildren(_Node<T>? root){ // Parcours en profondeur
    int ret = 0;
    var slist = root?.children;
    var length = slist?.length() ?? 0;
    ret += length;
    for(int i=0;i<length;i++){
      var n = slist?.elementAt(i);
      ret += _countChildren(n);
    }
    return ret;
  }

  int size()  {
    int ret = 0;
    if(root == null) return 0;
    ret ++;
    ret += _countChildren(root);
    return ret;
  }

  _Node? _getNode(int key)=> _browseChildren(key, root);

  _Node? _browseChildren(int key, _Node<T>? root){// parcours en largeur
    _stack.clear();   
    print("[DEBUG]: ${root?.key ?? 'null'}");
    _Node? ret;
    if(root?.key == key) {
      return root;
    }
    _stack.push(root);

    while(!_stack.isEmpty()){
      var n = _stack.pop();
      if(n?.key == key){
        ret = n;
        break;
      }
      var slist = n?.children;
      var length = n?.children?.length() ?? 0;
      for(int i=0;i<length;i++){
        _stack.push(slist?.elementAt(i));
      } 
    }

    /*var slist = root?.children;
    var length = slist?.length() ?? 0;
    for(int i=0;i<length;i++){
      var n = slist?.elementAt(i);
      if(n?.key == key){
        ret = n;
        break;
      }
    } 

    for(int i=0;i<length;i++){
      var n = _browseChildren(key, slist?.elementAt(i));
      if(n?.key == key){
        ret = n;
        break;
      }
    }*/

    return ret;
  }

  @override
  String toString() => root.toString();

}