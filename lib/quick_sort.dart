int partition(List<int> a,int lo,int hi){
  int i = lo, j = hi + 1, buffer = 0;
  while(true){
    while(a[++i]<a[lo]){
      if(i == hi) break;
    }
    while(a[lo]<a[--j]){
      if(j == lo) break;
    }

    if(i>=j) break;
    buffer = a[i];
    a[i] = a[j];
    a[j] = buffer;
  }

  buffer = a[j];
  a[j] = a[lo];
  a[lo] = buffer;
  return j;
}

void _quicksort(List<int> a,int lo,int hi){
  if (hi <= lo) return;
  int j = partition(a, lo, hi);
  _quicksort(a, lo, j-1);
  _quicksort(a, j+1, hi);
}

void sort(List<int> a) => _quicksort(a, 0, a.length - 1);