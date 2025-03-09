binarySearch(List<int>arr,target){
  int left = 0;
  int right = arr.length-1;
  while(left<=right){
    int mid = ((left+right)/2).floor();
    if(arr[mid]==target){
      return mid;
    }else if(arr[mid]<target){
      left = mid+1;
    }else{
      right = mid-1;
    }
  }
  return -1;
}
void main(){
  List<int>arr= [1,2,3,4,5,6,7,8];
  print(binarySearch(arr, 2));
}