quickSort(List<int>arr){
  if(arr.length<=1){
    return arr;
  }
  int pivot = arr[arr.length~/2];
  List<int>left = [];
  List<int>right =[];
  for(int i=0;i<arr.length;i++){
    if(pivot==arr[i])continue;
    if(arr[i]<pivot){
      left.add(arr[i]);
    }else{
      right.add(arr[i]);
    }
  }
  return [...quickSort(left),pivot,...quickSort(right)];
}

void main(){
  List<int>arr = [8,3,2,1];
  print(quickSort(arr));
}