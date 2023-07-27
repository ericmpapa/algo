int pgcd(int a, int b){
  if(b == 0) return a;
  if(a == 0) return b;
  return pgcd(b,a%b);
}