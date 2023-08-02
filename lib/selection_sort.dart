import 'coord.dart';

void sort(List<int> tab){
  int N = tab.length;
  int min = 0;
  int buffer = 0;
  for(int i=0;i<=N-2;i++){
    min = i;
    for(int j=i+1;j<=N-1;j++){
      if(tab[j]< tab[min]) min = j;
    }
    if(min!=i){
        buffer = tab[i];
        tab[i] = tab[min];
        tab[min] = buffer;
    }
  }
}

void sortCoord(List<Coord> tab,Coord origin){
  int N = tab.length;
  int min = 0;
  Coord buffer = Coord(0,0);
  for(int i=0;i<=N-2;i++){
    min = i;
    for(int j=i+1;j<=N-1;j++){
      if(tab[j].distance(origin) < tab[min].distance(origin)) min = j;
    }
    if(min!=i){
        buffer = tab[i];
        tab[i] = tab[min];
        tab[min] = buffer;
    }
  }
}