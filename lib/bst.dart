class BST<T> {
  BST<T>? left;
  BST<T>? right;
  int? key;
  T? value;

  BST();

  BST.fromTrees(this.key,this.value,this.left,this.right);

  BST.leaf(this.key,this.value);

  bool isEmpty() => left == null && right == null && value == null && key == null;

  
  void add(int key,T value){
    if(!isEmpty()){
      if(key == this.key){
        throw Exception("La clé $key existe déjà dans l'arbre");
      } else if(key < this.key!){
        if(left == null){
          left = BST.leaf(key, value);
        }else{
          left?.add(key, value);
        }        
      } else if(key > this.key!){
        if(right == null){
          right = BST.leaf(key, value);
        }else{
          right?.add(key, value);
        } 
      }
    } else{
      this.key = key;
      this.value = value;
    }   
  }

  T? get(int key){
    T? ret;
    if(!isEmpty()){
      if(key == this.key){
        ret = this.value;
      } else if(key < this.key!){
        ret = left?.get(key);
      } else if(key > this.key!){
        ret = right?.get(key);
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

  @override
  String toString()=> "{key:$key,value:$value,children:[left:$left,right:$right]}";
}