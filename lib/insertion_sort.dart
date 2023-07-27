void sort(List<int> a){
  int N = a.length;
  int buffer = 0;
  for (int i = 1; i < N; i++){
    for (int j = i; j > 0 && (a[j]< a[j-1]); j--){
      buffer = a[j];
      a[j] = a[j-1];
      a[j-1] = buffer;
    }
  }
}