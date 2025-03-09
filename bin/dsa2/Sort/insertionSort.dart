void insertionSort(List<int> arr) {
  for (int i = 1; i < arr.length; i++) {
    int key = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j = j - 1;
    }
    arr[j + 1] = key;
  }
}

void main() {
  List<int> arr = [12, 11, 13, 5, 6];
  insertionSort(arr);
  print(arr);
}



// binarySearch(nums,target,left,right){
//   // int left =0;
//   // int right=nums.length-1;
// int mid = ((left+right)/2).floor();
// if(nums[mid]==target) return mid;
// if(nums[mid]>target){
//   right = mid-1;
// }else{
//   left = mid +1;
// }
// return binarySearch(nums, target,left,right);
// }

// void main(){
//   List<int>nums=[1,2,3,4,5,6,7];
//   int target = 4;
//   print(binarySearch(nums,target,0,nums.length-1));
// }