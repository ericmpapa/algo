void sort(List<int> tab){
  int N = tab.length;
  int min = 0;
  int buffer = 0;
  for(int i=0;i<N-2;i++){
    min = i;
    for(int j=i+1;j<N;j++){
      if(tab[j]< tab[min]) min = j;
    }
    if(min!=i){
        buffer = tab[i];
        tab[i] = tab[min];
        tab[min] = buffer;
    }
  }
}