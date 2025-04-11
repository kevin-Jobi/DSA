// fac(int num){
//   if(num==1) return 1;
//   return num*fac(num-1);
// }

// void main(){
//   print(fac(5));
// }

factorial(int num) {
  if(num==1) return 1;
  return factorial(num-1) *num;
}

void main(){
  print(factorial(5));
}