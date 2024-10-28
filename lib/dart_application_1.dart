import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main() {
 List<int> movingTargettoEnd(nums,target){
  
  int temp;
  int i=0;
  int j=nums.length-1;
  while(i<j){
    if(i<j&&nums[j]==target){
      j--;
    }
      if(nums[i]==target&&nums[j]!=target){
        temp=nums[i];
        nums[i]=nums[j];
        nums[j]=temp;
      }
    i++;
  }
 
  return nums;
}
List<int>nums=[6,1,6,8,10,4,15,6,3,9,6];
int target=6;
List<int>result= movingTargettoEnd(nums,target);
print(result);
}
