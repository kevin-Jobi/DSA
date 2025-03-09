class IntStack{
  List<int>stack = [];
  push(int data){
    stack.add(data);
  }
  pop(){
    if(stack.isEmpty)return'no data';
     return stack.removeLast();
  }
  peak(){
    if(stack.isEmpty)return'no data';
    return stack.last;
  }
  List<int>rev = [];
  popRev(){
    while(stack.isNotEmpty){
      rev.add(stack.removeLast());
    }
    return rev;
  }
}
void main(){
  IntStack stack = IntStack();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  print(stack.pop());
  print(stack.peak());
  print(stack.popRev());
}