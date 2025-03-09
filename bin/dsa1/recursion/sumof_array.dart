sumofArray(List<int>arr,index){
if(index<0) return 0;
return sumofArray(arr, index-1) + arr[index];
}
void main(){
  List<int>arr = [1,2,3,4];
  print(sumofArray(arr, arr.length-1));
}

