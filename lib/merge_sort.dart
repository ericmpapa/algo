List<int> merge(List<int> tab1,List<int> tab2){ // fusion
  if(tab1.isEmpty) return tab2;
  if(tab2.isEmpty) return tab1;
  if (tab1[0] <= tab2[0]) return  [tab1[0],...merge(tab1.sublist(1,tab1.length),tab2)];
  return  [tab2[0],...merge(tab2.sublist(1,tab2.length),tab1)];
}

List<int> sort(List<int> tab){ // tri
  if(tab.length <= 1) return tab;
  return merge(sort(tab.sublist(0,tab.length~/2)),sort(tab.sublist(tab.length~/2,tab.length)));
}