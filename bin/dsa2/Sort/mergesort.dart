mergeSort(arr){
if(arr.length<=1)return arr;
int mid = arr.length~/2;
List<int>left = arr.sublist(0,mid);
List<int>right = arr.sublist(mid);
left = mergeSort(left);
right = mergeSort(right);
return merge(left, right);
}
merge(left,right){
List<int>result = [];
int i = 0,j=0;
while(i<left.length&&j<right.length){
  if(left[i]<right[j]){
    result.add(left[i]);
    i++;
  }else{
    result.add(right[j]);
    j++;
  }
  
}
result.addAll(left.sublist(i));
  result.addAll(right.sublist(j));
  return result;
}
void main(){
  List<int>arr = [3,8,9,3,5];
  print(mergeSort(arr));
}