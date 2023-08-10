int? bruteForceSearch(List<int> tab,int criteria){
  int? ret;
  for(int i=0;i<tab.length;i++){
    if(tab[i] == criteria){
      ret = i;
      break;
    }
  }
  return ret;
}

int? binarySearch(List<int> tab,int criteria,int index){  
  int? ret;
  int middle = tab.length ~/ 2;
  print("[DEBUG] index:$index, middle:$middle");
  if(tab[middle] == criteria){
    ret = middle + index;
  } else if(tab[middle] > criteria){
    ret = binarySearch(tab.sublist(0,middle), criteria,index);
  } else{
    ret = binarySearch(tab.sublist(middle), criteria,middle+index);
  }
  return ret;
}

/* // Recherche une valuer dans un tableau
int? binarySearch(List<int> tab,int criteria){
  int? ret;
  int middle = tab.length ~/ 2;
  if(tab[middle] == criteria){
    ret = tab[middle];
  } else if(tab[middle] > criteria){
    ret = binarySearch(tab.sublist(0,middle), criteria);
  } else{
    ret = binarySearch(tab.sublist(tab.length), criteria);
  }
  return ret;
}*/