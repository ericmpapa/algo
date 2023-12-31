import 'package:sprintf/sprintf.dart';
class BTree<M,T> {
  BTree<M,T>? left;
  BTree<M,T>? right;
  M? key;
  T? value;

  BTree();

  BTree.fromTrees(this.key,this.value,this.left,this.right);

  BTree.leaf(this.key,this.value);

  bool isEmpty() => left == null && right == null && value == null && key == null;

  // remplacement d'un noeud par un nouveau noeud à la gauche d'un noeud parent grâce à la clé du noeud parent, la clé du nouveau noeud et la valeur du nouveau noeud
  void setLeft(M parentKey,M key,T value){ 
    BTree<M,T>? parent = _btreeAt(parentKey);
    if(parent == null) {
      ArgumentError.value(parentKey);
    } 
    parent?.left = BTree.leaf(key, value);
  }

  // remplacement d'un noeud par un nouveau noeud à la droite d'un noeud parent grâce à la clé du noeud parent, la clé du nouveau noeud et la valeur du nouveau noeud
  void setRight(M parentKey,M key,T value){ 
    BTree<M,T>? parent = _btreeAt(parentKey);
    if(parent == null) {
      ArgumentError.value(parentKey);
    } 
    parent?.right = BTree.leaf(key, value);
  }

  // remplacement de la valeur d'un noeud par une nouvelle à la gauche d'un noeud parent grâce à la clé du noeud parent, la clé du nouveau noeud et la valeur du nouveau noeud
  void setLeftValue(M parentKey,T value){ 
    BTree<M,T>? parent = _btreeAt(parentKey);
    if(parent == null) {
      ArgumentError.value(parentKey);
    } 
    parent?.left?.value = value;
  }

  // remplacement de la valeur d'un noeud par une nouvelle à la droite d'un noeud parent grâce à la clé du noeud parent, la clé du nouveau noeud et la valeur du nouveau noeud
  void setRightValue(M parentKey,T value){ 
    BTree<M,T>? parent = _btreeAt(parentKey);
    if(parent == null) {
      ArgumentError.value(parentKey);
    } 
    parent?.right?.value = value;
  }

  BTree<M,T>? _btreeAt(M key){
    BTree<M,T>? ret;
    if(!isEmpty()){
      if(this.key == key){
        ret = this;
      } else{
        ret = left?._btreeAt(key);
        ret ??= right?._btreeAt(key);        
      }      
    }
    return ret;
  }

  int size(){ // Parcours en profondeur
    int ret = 0;
    if(!isEmpty()){
      ret ++;
      ret += left?.size() ?? 0;
      ret += right?.size() ?? 0;
    }
    return ret;
  }

  bool hasKey(M key){
    bool ret = false;
    if(!isEmpty()){
      if(this.key == key){
        ret = true;
      } else{
        ret = left?.hasKey(key) ?? false;
        if(!ret){
          ret = right?.hasKey(key) ?? false;
        }        
      }      
    }
    return ret;
  }



  @override
  String toString()=> "{key:$key,value:$value,children:[left:$left,right:$right]}";
}