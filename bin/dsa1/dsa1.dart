//Complixity

// void main() {
//  List<int> movingTargettoEnd(nums,target){

//   int temp;
//   int i=0;
//   int j=nums.length-1;
//   while(i<j){
//     if(i<j&&nums[j]==target){
//       j--;
//     }
//       if(nums[i]==target&&nums[j]!=target){
//         temp=nums[i];
//         nums[i]=nums[j];
//         nums[j]=temp;
//       }
//     i++;
//   }

//   return nums;
// }
// List<int>nums=[6,1,6,8,10,4,15,6,3,9,6];
// int target=6;
// List<int>result= movingTargettoEnd(nums,target);
// print(result);
// }

// ======================================================================================

// void main(){
// sum(list,target){

// Set<int>set={};
// for(int i=0;i<list.length;i++){
//   int temp= target-list[i];
//   if(!set.contains(temp)){
//     set.add(temp);
//   }
//   return temp;

// }
// }
// List<int>list=[6,5,4,3,9,8,0];
// int target=10;
// print(sum(list, target));
// }

// ============================================================================================

// class Node {
//   int data;
//   Node? next;

//   Node(this.data);
// }

// class LinkedList {
//   Node? head;

//   // Method to add a node at the end of the list
//   void add(int data) {
//     Node newNode = Node(data);

//     if (head == null) {
//       head = newNode;
//     } else {
//       Node? current = head;
//       while (current!.next != null) {
//         current = current.next;
//       }
//       current.next = newNode;
//     }
//   }

//   // Method to print the list
//   void printList() {
//     Node? current = head;

//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }
// }

// void main() {
//   LinkedList list = LinkedList();

//   // Adding 3 values to the linked list
//   list.add(10);
//   list.add(20);
//   list.add(30);
//   list.add(40);

//   // Printing the added values
//   list.printList();

// }

// --------------------------------------------------------------------

// class Node {
//   int data;
//   Node? next;
//   Node(this.data);
// }

// class LinkedList {
//   Node? head;
//   Node? tail;
//   void add(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       Node? current = head;
//       while (current!.next != null) {
//         current = current.next;
//       }
//       current.next = newNode;
//     }
//   }

//   void delete(int data) {
//     Node? temp = head;
//     Node? prev = null;
//     if (temp != null && temp.data == data) {
//       head = temp.next;
//       return;
//     }
//     while (temp != null && temp.data != data) {
//       prev = temp;
//       temp = temp.next;
//     }
//     prev!.next = temp!.next;
//   }

//   void printList() {
//     Node? current = head;
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }
// }

// void main() {
//   LinkedList list = LinkedList();
//   list.add(10);
//   list.add(20);
//   list.add(30);
//   // list.delete(20);
//   list.printList();
// }

// ----------------------------------------------------------

// void main(){
//   List<int>nums=[1,2,3,4];
//   nums.insertAll(2, [5,6]);
//   print(nums);

//   List<int>arr= nums.reversed.toList();
//   print(arr);
// }

// ------------------------------------------------------------

// class Node {
//   int data;
//   Node? next;
//   Node(this.data);
// }

// class LinkedList {
//   Node? head;
//   Node? tail;

//   void add(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//       tail = newNode;
//     } else {
//       tail!.next = newNode;
//       tail = newNode;
//     }
//   }

//     void printList() {
//     Node? current = head;
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }

//   void delete(int data) {
//     Node? temp = head;
//     Node? prev = null;

//     if (temp != null && temp.data == data) {
//       head = temp.next;
//       if (head == null) {
//         tail = null; // List is now empty
//       }
//       return;
//     }

//     while (temp != null && temp.data != data) {
//       prev = temp;
//       temp = temp.next;
//     }

//     if (temp == null) return; // Data not found

//     prev!.next = temp.next;

//     if (prev.next == null) {
//       tail = prev; // Update tail if the last node was deleted
//     }
//   }

//   void addAtBeginning(int data) {
//     Node newNode = Node(data);
//     newNode.next = head;
//     head = newNode;
//     if (tail == null) {
//       tail = newNode; // If the list was empty
//     }
//   }

//   bool search(int data) {
//     Node? current = head;
//     while (current != null) {
//       if (current.data == data) {
//         return true;
//       }
//       current = current.next;
//     }
//     return false;
//   }

//   void insertAfter(int afterData, int newData) {
//     Node? current = head;
//     while (current != null && current.data != afterData) {
//       current = current.next; // node current is having the data of afterData
//     }
//     if (current != null) {
//       Node newNode = Node(newData);
//       newNode.next = current.next;
//       current.next = newNode;
//       if (current == tail) {
//         tail = newNode; // Update tail if inserting after the last node
//       }
//     }
//   }

//   bool isEmpty() {
//     return head == null;
//   }
// }

// void main() {
//   LinkedList list = LinkedList();

//   // list.add(10);
//   // list.add(20);
//   // list.add(30);
//   // list.add(40);

//   print("Original list:");

//   // list.delete(30);
//   // print("\nAfter deleting :");
//   // list.printList();

//   list.addAtBeginning(5);
//   list.printList();
//   // print("\nAfter adding 5 at the beginning:");
//   // list.printList();

//   // list.insertAfter(50, 15);
//   // print("\nAfter inserting 15 after 10:");
//   // list.printList();

//   // print("\nIs 30 in the list? ${list.search(30)}");
//   // print("Is 20 in the list? ${list.search(20)}");

//   // print("\nIs the list empty? ${list.isEmpty()}");
// }

// ----------------------------------------------------------------===========================================================================

// ==============================================================================

// void main() {
//   String letter = 'ab'; // change this to any letter
//   print(getAlphabetPosition(letter));
// }

// int getAlphabetPosition(String letter) {
//   int asciiValue = letter.codeUnitAt(0);

//   if (asciiValue >= 65 && asciiValue <= 90) {
//     // Uppercase letters
//     return asciiValue - 64;
//   } else if (asciiValue >= 97 && asciiValue <= 122) {
//     // Lowercase letters
//     return asciiValue - 96;
//   } else {
//     throw Exception('Invalid input');
//   }
// }

// ===================================================================================

// void main(){
//   List<int>numbers=[1,2,3,4,5];
//   //arr.addAll([4,5]);
//   // numbers.insert(1,10);
//   // numbers.insert(2,77);
//   // numbers.insertAll(1,[88]);
// //  numbers.removeAt(1);
// // numbers.removeLast();
// // numbers.removeWhere((n)=>n%2==0);
// // numbers.clear();
// // print(numbers.contains(2));
// // print(numbers.indexOf(3));

//   print(numbers);
//   var nums=numbers.map((e) => e*2);
//   print(nums);
// }

// =====================================================

// class Node {
//   int data;
//   Node? next;
//   Node(this.data);
// }

// class LinkedList {
//   Node? head;
//   Node? tail;
//   add(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       Node? current = head;
//       while (current!.next != null) {
//         current = current.next;
//       }
//       current.next = newNode;
//     }
//   }

//   reverse() {
//     Node? pre = null;
//     Node? curr = head;
//     while (curr != null) {
//       Node? cnex = curr.next;
//       curr.next = pre;
//       pre = curr;
//       curr = cnex;
//     }
//     head = pre;
//   }

//   // reverse() {
//   //       Node? pre = null;
//   //       Node? curr = head;

//   //       while (curr != null) {
//   //           Node? cnex = curr.next;
//   //           curr.next = pre;
//   //           pre = curr;
//   //           curr = cnex;
//   //       }
//   //       head = pre;
//   //   }

//   showList() {
//     Node? current = head;
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }
// }

// void main() {
//   LinkedList list = LinkedList();
//   list.add(10);
//   list.add(20);
//   list.add(30);
//   list.add(40);
//   list.reverse();
//   list.showList();
// }

// ==============================================================================

// class Node{
//   int data;
//   Node? next;
//   Node(this.data);
// }
// class LinkedList{
//   Node? head;
//   Node? tail;
//   data(int data){
//     Node newNode=Node(data);
//     if(head==null){
//       head=newNode;
//       tail=newNode;
//     }else{
//       tail!.next=newNode;
//       tail=newNode;
//     }
//   }
//  delete(int data){
//   Node? temp=head;
//   if(temp!=null&& temp.data==data){
//     head=temp.next;
//     if(head==null){
//       tail=null;
//     }
//     return;
//   }
//   Node?prev;
//   while(temp!=null&&temp.data!=data){
//     prev=temp;
//     temp=temp.next;
//   }
//   prev!.next=temp!.next;
//   if(prev.next==null){
//     tail=prev;
//   }

//  }
//   reverse(){
//     Node? pre=null;
//     Node? curr=head;
//     while(curr!=null){
//       Node?cnex=curr.next;
//       curr.next=pre;
//       pre=curr;
//       curr=cnex;
//     }
//     head=pre;
//   }
//   search(int data){
//     Node? current=head;
//     while(current!=null){
//       if(current.data==data){
//         return true;
//       }
//       current=current.next;
//     }
//     return false;
//   }
//   addAtBeginning(int data){
//     Node? newNode=Node(data);
//     newNode.next=head;
//     head=newNode;
//     if(tail==null){
//       tail=newNode;
//     }
//   }
//   insertAfter(afterData,int data){
//     Node?current=head;
//     while(current!=null&&current.data!=afterData){
//       current=current.next;
//     }
//     if(current!=null){
//  Node?newData=Node(data);
//     newData.next= current!.next;
//     current.next=newData;
//      if(current==tail){
//       tail=newData;
//     }
//     }
//    }

//   printList(){
//     Node? current=head;
//     while(current!=null){
//       print(current.data);
//       current=current.next;
//     }
//   }
// }
// void main(){
//   LinkedList list=LinkedList();
//   list.data(10);
//   list.data(20);
//   list.data(30);
//   //list.delete(30);
//   //list.reverse();
//   print(list.search(40));
//   list.addAtBeginning(50);
//   list.insertAfter(20, 70);
//   list.printList();
// }

// ----------------------------------------------------------

// =============================================================================

// void main(){
// binarySearch(arr,target){
//   int left=0;
//   int right=arr.length-1;

//   while(left<=right){
//     int mid=((left+right)/2).floor();
//     if(arr[mid]==target){
//       return mid;
//     }else if(arr[mid]>target){
//       right= mid-1;
//     }else{
//       left=mid+1;
//     }
//   }
//   return -1;
// }
// List<int> arr = [3,4,5,6,7,8,9,10];
// int target = 3;

// print(binarySearch(arr, target));
// }

// ====================================================================

// void main(){
//   binarySearch(arr,target){
//     int left=0;
//     int right=arr.length-1;
//     while(left<=right){
//       int mid=((right+left)/2).floor();
//       if(arr[mid]==target){
//         return mid;
//       }else if(arr[mid]<target){
//         left=mid+1;
//       }else{
//         right=mid-1;
//       }
//     }
//     return 'not found';
//   }
//   print(binarySearch([1,2,3,4,5], 4));
// }

// ============================================================

// class Node{
//   int data;
//   Node? next;
//   Node(this.data);
// }
// class LinkedList{
//   Node? head;
//   Node? tail;
//   add(int data){
//     Node newNode=Node(data);
//     if(head==null){
//       head=newNode;
//       tail=newNode;
//       tail!.next=head;
//     }else{
//       // Node? current=head;
//       // while(current!.next!=null){
//       //   current=current.next;
//       // }
//       // current.next=newNode;
//       tail!.next=newNode;
//       tail=newNode;
//       tail!.next=head;
// }
// }
// cycleOrNot(){
//   if(head==null){
//     return;
//   }
//   Node? slow=head;
//   Node? fast=head;
//   while(slow!.data != fast!.data){
//     slow=slow.next;
//     fast=fast.next!.next;
//   }
//   print(slow.data);
// }
// printList(){
//   Node? current=head;
//   while(current!=null){
//     print(current.data);
//     current=current.next;
//   }
// }
// }
// void main(){
//   LinkedList list=LinkedList();
//   list.add(10);
//   list.add(20);
//   list.add(30);
//   list.cycleOrNot();
//   // list.printList();
// }

// ----------------------------------------------------------

// void main(){
//   stringReverse(str){
//     if(str.length<=1){
//       return str;
//     }
//     return stringReverse(str.substring(1))+str[0];
//   }

//   print(stringReverse('kevin'));
// }

// ------------------------------------------------------

// void main(){
//   List<int>arr=[1,2,3];
//   sumofArray(arr){
//     if(arr.length==0){
//       return 0;
//     }
//     return arr[0]+sumofArray(arr.sublist(1));
//   }

//   print(sumofArray(arr));
// }

// ------------------------------------------------------------

// void main(){
// String arr= "kevin";
// print(arr.substring(1));
// }

// void main(){
//   factorial(n){
//     if(n<=1){
//       return 1;
//     }
//     return n*factorial(n-1);
//   }
//   print(factorial(4));
// }

// void main(){
//   sumofArray(arr){
//     if(arr.length==0){
//       return 0;
//     }
//     return arr[0]+sumofArray(arr.sublist(1));
//   }
//   List<int>arr=[1,2,3,4];
//   print(sumofArray(arr));
// }

// void main(){
//   String str='kevin';
//   revString(str){
//     if(str.isEmpty){
//       return '';
//     }
//     return revString(str.substring(1)) + str[0];
//   }
//   print(revString(str));
// }

// void main(){
//   revString(str){
//     if(str.isEmpty){
//       return '';
//     }
//     return revString(str.substring(1)) + str[0];
//   }
//   String str='kevin';
//   print(revString(str));
// }

// void main(){
//   sumofnElements(n){
//     if(n<=1){
//       return 1;
//     }
//     return n+sumofnElements(n-1);
//   }
//   int n=5;
//   print(sumofnElements(n));
// }

// sumofOddinArray(arr,index){
// if(index>=arr.length){
//   return 0;
// }
// if(arr[index]%2!=0){
//   return arr[index] + sumofOddinArray(arr, index+1);
// }
// return sumofOddinArray(arr, index+1);
// }
// void main(){
//   List<int>arr=[1,2,3,4,5];

//   print(sumofOddinArray(arr,0));
// }

// ***********************************************************************************************
// nw
// LINKED LIST linked list
// class Node {
//   int data;
//   Node? next;
//   Node(this.data);
// }

// class LinkedList {
//   Node? head;
//   Node? tail;

//   add(data) {
//     Node? newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//       tail = newNode;
//     } else {
//       tail!.next = newNode;
//       tail = newNode;
//     }
//   }

//   void removeDup() {
//     if (head == null) {
//       print('no values');
//       return;
//     }
//     Node? temp = head;
//     while (temp != null && temp.next != null) {
//       if (temp.data == temp.next!.data) {
//         temp.next = temp.next!.next;
//       } else {
//         temp = temp.next;
//       }
//     }
//   }

//   arraytoLinkedList(arr) {
//     for (int i = 0; i < arr.length; i++) {
//       add(arr[i]);
//     }
//   }

//   addAfter(afterData, data) {
//     Node? newNode = Node(data);
//     Node? current = head;
//     while (current != null && current.data != afterData) {
//       current = current.next;
//     }
//     newNode.next = current!.next;
//     current.next = newNode;
//     if (current == tail) {
//       tail = newNode;
//     }
//   }

//   search(data) {
//     Node? current = head;
//     while (current != null) {
//       if (current.data == data) {
//         return true;
//       }
//       current = current.next;
//     }
//     return false;
//   }

//   delete(data) {
//     if (head!.data == data) {
//       head = head!.next;
//       if (head == null) {
//         tail = null;
//       }
//       return;
//     }
//     Node? current = head;
//     Node? prev;
//     while (current != null && current.data != data) {
//       prev = current;
//       current = current.next;
//     }
//     if (current == null) return;
//     prev!.next = current.next;
//     if (prev.next == null) {
//       tail = prev;
//     }
//   }

//   middleValue() {
//     Node? slow = head;
//     Node? fast = head;
//     Node? prev = null;
//     while (fast != null && fast.next != null) {
//       prev = slow;
//       slow = slow!.next;
//       fast = fast.next!.next;
//     }
//     if (prev != null) {
//       prev.next = slow!.next;
//     }
//   }

//   insertBefore(beforeData, data) {
//     Node? newNode = Node(data);
//     Node? current = head;
//     if (current == null) {
//       return 'List is empty';
//     }
//     if (current.data == beforeData) {
//       newNode.next = current;
//       head = newNode;
//       return;
//     }
//     Node? prev;
//     while (current != null && current.data != beforeData) {
//       prev = current;
//       current = current.next;
//     }
//     if (current != null) {
//       prev!.next = newNode;
//       newNode.next = current;
//     } else {
//       print('Data is not found');
//     }
//   }

//   addAtBeginning(data) {
//     Node? newNode = Node(data);
//     newNode.next = head;
//     head = newNode;
//   }

//   printList() {
//     Node? current = head;
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }
// }

// void main() {
//   LinkedList list = LinkedList();
//   list.add(30);
//   list.add(10);
//   list.add(20);
//   list.add(30);
//   list.add(30);
//   list.add(40);
//   List<int> arr = [1, 2, 3];
//   // list.removeDup();
// // print(list.search(20));
//   // list.delete(30);
//   // list.add(50);
//   // list.middleValue();

//   // list.arraytoLinkedList(arr);
//   // list.insertBefore(30, 25);
//     // list.addAtBeginning(5);
//   // list.addAfter(10, 15);
//   list.printList();
// }

// *************************************************************************************************

// ############################################################################

// double linked list

// class Node {
//   Node? prev;
//   Node? next;
//   int data;
//   Node(this.data);
// }

// class DLinkedList {
//   Node? head;
//   Node? tail;

//   add(data) {
//     Node? newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//       tail = newNode;
//     } else {
//       tail!.next = newNode;
//       newNode.prev = tail;
//       tail = newNode;
//     }
//   }

//   display() {
//     Node? temp = head;
//     while (temp != null) {
//       print(temp.data);
//       temp = temp.next;
//     }
//   }

//   displayReverse() {
//     Node? temp = tail;
//     while (temp != null) {
//       print(temp.data);
//       temp = temp.prev;
//     }
//   }
// }

// void main() {
//   DLinkedList list = DLinkedList();
//   list.add(10);
//   list.add(20);
//   list.add(30);
//   list.display();
//   list.displayReverse();
// }

// ====================================================================================

// String reversed
// reverse(str) {
//   List<String> words = str.split(' ');
//   String reversed = words.map((e) => e.split('').reversed.join()).join(' ');
//   return reversed;
// }

// void main() {
//   String str = "Kevin Jobi";
//   print(reverse(str));
// }

// ======================================================================

// int countOccurrences(String str, String pattern) {
//   int count = 0;
//   int index = 0;

//   // Loop through the string and look for the pattern
//   while ((index = str.indexOf(pattern, index)) != -1) {
//     count++;
//     index += pattern.length;  // Move the index forward to continue searching
//   }

//   return count;
// }

// void main() {
//   String input = "hihihello";
//   String pattern = "hi";

//   int occurrences = countOccurrences(input, pattern);
//   print("Number of occurrences of '$pattern': $occurrences");
// }

// =================================================================================

// ensureFullstop(str){
//   if(str.endsWith('.')){
//     return str;
//   }else{
//     return '$str.';
//   }
// }
// void main(){
//   String str='kevin';
//   print(ensureFullstop(str));
// }

// =========================================

// Recursion

// String reverse(String str){
// if(str.isEmpty){
// return '';
// }
// return   reverse(str.substring(1)) +str[0];
// }
// void main(){
//   String str='kevin';
//   print(reverse(str));
// }

// ================================= (evin) +k, (vin) +e, (in) +v, (n)+i, ('')+n   nivek

// binarySearch(arr,target){
// int left=0;
// int right=arr.length-1;

// while(left<=right){
//   int mid=((right+left)/2).floor();
//   if(arr[mid]==target){
//   return mid;
// }else if(arr[mid]<target){
//   left=mid+1;
// }else{
//   right=mid-1;
// }
// }
// return -1;
// }
// void main(){
//   List<int>arr=[1,2,3,4,5];
//   print(binarySearch(arr, 4));
// }

// void main(){
//   List<int>arr=[1,4,3,2,5];
//   arr.sort();

// print(arr[arr.length-2]);
// }

//  binarySearch(arr,target){
//     int left=0;
//     int right=arr.length-1;
//     while(left<=right){
//       int mid=((left+right)/2).floor();
//       if(arr[mid]==target){
//         return mid;
//       }else if(arr[mid]<target){
//         left=mid+1;
//       }else{
//         right=mid-1;
//       }
//     }
//     return -1;
//   }
// void main(){
//  List<int>arr=[1,2,3,4,5,7];
//  print(binarySearch(arr, 5));
// }

// =========================================================================

// Optimized Bubble Sort implementation in Dart
// void bubbleSort(List<int> arr) {
//   int n = arr.length;
//   bool swapped;

//   for (int i = 0; i < n - 1; i++) {
//     swapped = false;

//     for (int j = 0; j < n - i - 1; j++) {
//       if (arr[j] > arr[j + 1]) {
//         // Swap arr[j] and arr[j + 1]
//         int temp = arr[j];
//         arr[j] = arr[j + 1];
//         arr[j + 1] = temp;
//         swapped = true;
//       }
//     }

//     // If no two elements were swapped in the inner loop, break
//     if (!swapped) break;
//   }
// }

// // Function to print an array
// void printArray(List<int> arr) {
//   for (int element in arr) {
//     print(element);
//   }
// }

// // Driver program
// void main() {
//   List<int> arr = [64, 34, 25, 12, 22, 11, 90];
//   bubbleSort(arr);
//   print('Sorted array: ');
//   printArray(arr);
//   // print(arr);
// }

// ---------------------------------------------------------------------------------------------

// bubbleSort(List<int> arr){
//   for(int i=0;i<arr.length;i++){
//     bool sorted =true;
//     for(int j=0;j<arr.length-i-1;j++){
//       if(arr[j]>arr[j+1]){
//         int temp = arr[j];
//          arr[j] = arr[j+1];
//         arr[j+1] = temp;

//         sorted=false;

//       }
//     }

//     if(sorted==true){
//       break;
//     }
//     }
//     print(arr);
// }
// void main(){
//   List<int>arr=[12,11,13,5,6] ;
//   bubbleSort(arr);

// }

// bubbleSort(List<int>nums){
// for(int i=0;i<nums.length-1;i++){
//   bool swapped=false;
//   for(int j=0;j<nums.length-i-1;j++){
//     if(nums[j]>nums[j+1]){
//       int temp=nums[j];
//       nums[j]=nums[j+1];
//       nums[j+1]=temp;
//     }
//     swapped=true;
//   }
//   if(!swapped){
//     break;
//   }
//   print(nums);
// }
// }
// void main(){
//   List<int>nums=[4,3,2,1];
//   bubbleSort(nums);
// }

// ------------------------------------------------

// void insertionSort(List<int> arr) {
//   for (int i = 1; i < arr.length; i++) {
//     int key = arr[i];
//     int j = i - 1;
//     while (j >= 0 && arr[j] > key) {
//       arr[j + 1] = arr[j];
//       j = j - 1;
//     }
//     arr[j + 1] = key;
//   }
// }

// void main() {
//   List<int> arr = [12, 11, 13, 5, 6];
//   insertionSort(arr);
//   print(arr);
// }

// void insertionSort(List<int>arr){
// for(int i=1;i<arr.length;i++){
//   int j=i-1;
//   int key=arr[i];
//   while(j>=0 && arr[j]>key){
//     arr[j+1]=arr[j];
//     j=j-1;
//   }
//   arr[j+1]=key;
// }
// }
// void main(){
//   List<int>arr=[12,11,13,5,6];
//   insertionSort(arr);
//   print(arr);
// }

// QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ

// // Quick sort
// List<int> quickSort(List<int> numbers) {
//   if (numbers.length <= 1) {
//     return numbers; // Base case: a list of 0 or 1 element is already sorted
//   }

//   int pivot = numbers[numbers.length ~/ 2]; // Pick the middle element as pivot

//   List<int> left = []; // Smaller numbers
//   List<int> right = []; // Bigger numbers

//   for (int i = 0; i < numbers.length; i++) {
//     if (i == numbers.length ~/ 2) continue; // Skip the pivot
//     if (numbers[i] < pivot) {
//       left.add(numbers[i]);
//     } else {
//       right.add(numbers[i]);
//     }
//   }

//   // Sort the left and right parts recursively, then combine them
//   return [...quickSort(left), pivot, ...quickSort(right)];
// }

// void main() {
//   List<int> numbers = [8, 3, 5, 1, 7, 2];
//   print(quickSort(numbers)); // [1, 2, 3, 5, 7, 8]
// }

// MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM

// Merge Sort

// List<int> mergeSort(List<int> numbers) {
//   if (numbers.length <= 1) {
//     return numbers; // Base case: a list of 0 or 1 element is already sorted
//   }

//   // Split the list into two halves
//   int mid = numbers.length ~/ 2;
//   List<int> left = numbers.sublist(0, mid);
//   List<int> right = numbers.sublist(mid);

//   // Sort each half recursively
//   left = mergeSort(left);
//   right = mergeSort(right);

//   // Merge the two sorted halves
//   return merge(left, right);
// }

// List<int> merge(List<int> left, List<int> right) {
//   List<int> result = [];
//   int i = 0, j = 0;

//   // Merge the lists by comparing elements from both
//   while (i < left.length && j < right.length) {
//     if (left[i] < right[j]) {
//       result.add(left[i]);
//       i++;
//     } else {
//       result.add(right[j]);
//       j++;
//     }
//   }

//   // Add remaining elements from the left and right lists
//   result.addAll(left.sublist(i));
//   result.addAll(right.sublist(j));

//   return result;
// }

// void main() {
//   List<int> numbers = [8, 3, 5, 1, 7, 2];
//   print(mergeSort(numbers)); // [1, 2, 3, 5, 7, 8]
// }

// ==========================================================

// Stack
// class IntStack<int> {
//   List<int> stack = [];
//   push(int value) {
//     stack.add(value);
//   }

//   pop() {
//     if (stack.isEmpty) return 'There is no value';
//     return stack.removeLast();
//   }

//   peek() {
//     if (stack.isEmpty) return 'no values';
//     return stack.last;
//   }

//   isEmpty() {
//     return stack.isEmpty;
//   }

//   List<int> rev = [];
//   popRev() {
//     rev.add(stack.removeLast());
//     return rev;
//   }
// }

// void main() {
//   IntStack stack = IntStack();
//   stack.push(10);
//   stack.push(20);
//   stack.push(30);
//   print(stack.pop());

// //print(stack.isEmpty());
// // print(stack.popRev());
// // print(stack.peek());
// }

// ---------------------------------------------------------------------------------------------
// stack

// class IntStack {
//   List<int> stack = [];
//   push(value) {
//     stack.add(value);
//   }

//   pop() {
//     if (stack.isEmpty) return 'no value';
//     return stack.removeLast();
//   }

//   peak() {
//     if (stack.isEmpty) return 'no value';
//     return stack.last;
//   }

//   isEmpty() {
//     return stack.isEmpty;
//   }

//   List<int> rev = [];
//   poprev() {
//     while (!isEmpty()) {
//       rev.add(pop());
//     }
//   }

//   sum() {
//     int sum = 0;
//     for (var element in stack) {
//       sum += element;
//     }
//     return sum;
//   }
// }

// void main() {
//   IntStack stack = IntStack();
//   stack.push(19);
//   stack.push(2);
//   stack.push(3);
// // print(stack.pop());
// // print(stack.pop());
// // // print(stack.pop());
// // print(stack.peak());
// // print(stack.isEmpty());
// // stack.poprev();
// // print(stack.poprev());
// // print(stack.poprev());
// // print(stack.rev);
//   print(stack.sum());
// }

// ================================================================
// Queue

// class Queue<T> {
//   List<T> _queue = [];

//   // Enqueue an element (add to the end)
//   void enqueue(T element) {
//     _queue.add(element);
//   }

//   // Dequeue an element (remove from the front)
//   T dequeue() {
//     if (_queue.isEmpty) {
//       throw Exception('Queue is empty');
//     }
//     return _queue.removeAt(0);
//   }

//   // Peek at the front element without removing it
//   T peek() {
//     if (_queue.isEmpty) {
//       throw Exception('Queue is empty');
//     }
//     return _queue.first;
//   }

//   // Check if the queue is empty
//   bool isEmpty() {
//     return _queue.isEmpty;
//   }
// }

// void main() {
//   Queue<int> queue = Queue<int>();
//   queue.enqueue(10); // Add 10 to the queue
//   queue.enqueue(20); // Add 20 to the queue
//   queue.enqueue(30); // Add 30 to the queue

//   print(queue.dequeue()); // Outputs: 10 (first in, first out)
//   // print(queue.peek()); // Outputs: 20 (front of the queue)
//   // print(queue.isEmpty()); // Outputs: false (queue still has items)
// }

// HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH

// Claude ai
// class HashTable<K, V> {
//   final List<List<MapEntry<K, V>>> _buckets;
//   final int size;

//   HashTable([this.size = 16]) : _buckets = List.generate(size, (_) => []);

//   int _hash(K key) {
//     return key.hashCode % size;
//   }

//   void insert(K key, V value) {
//     final index = _hash(key);
//     final bucket = _buckets[index];

//     for (var i = 0; i < bucket.length; i++) {
//       if (bucket[i].key == key) {
//         bucket[i] = MapEntry(key, value);
//         return;
//       }
//     }

//     bucket.add(MapEntry(key, value));
//   }

//   V? get(K key) {
//     final index = _hash(key);
//     final bucket = _buckets[index];

//     for (var entry in bucket) {
//       if (entry.key == key) {
//         return entry.value;
//       }
//     }

//     return null;
//   }

//   void remove(K key) {
//     final index = _hash(key);
//     _buckets[index].removeWhere((entry) => entry.key == key);
//   }
// }

// void main() {
//   var hashTable = HashTable<String, int>();

//   hashTable.insert('apple', 5);
//   hashTable.insert('banana', 7);
//   hashTable.insert('orange', 3);

//   print(hashTable.get('apple'));  // Output: 5
//   print(hashTable.get('grape'));  // Output: null

//   hashTable.remove('banana');
//   print(hashTable.get('banana')); // Output: null
// }

// ########################################################################################

// jasir
// class HashTable {
//   List<List<dynamic>> table;
//   late int size;

//   HashTable(int size) : table = List.generate(size, (index) => []) {
//     this.size = size;
//   }

//   int hashFunction(dynamic key) {
//     return key.hashCode.abs() % size;
//   }

//   void insert(dynamic key, dynamic value) {
//     int index = hashFunction(key);
//     table[index].add(value);
//   }

//   List<dynamic> search(dynamic key) {
//     int index = hashFunction(key);
//     return table[index];
//   }

//   void remove(dynamic key, dynamic value) {
//     int index = hashFunction(key);
//     table[index].remove(value);
//   }

//   void displayall() {
//     for (int i = 0; i < size; i++) {
//       List<dynamic> temp = table[i];
//       print(temp);
//     }
//   }
// }

// void main() {
//   HashTable hashtable = HashTable(10);

//   hashtable.insert(1, "apple");
//   hashtable.insert(2, "banana");
//   hashtable.insert(3, "orange");
//   print(hashtable.search(1));
//   print(hashtable.search(2));
//   print(hashtable.search(2));
//   hashtable.remove(1, "apple");
//   print(hashtable.search(1));
//   // // // Output: []
//   hashtable.displayall();
// }

// -----------------------------------------------------------

// class HashTable {
//   List<List<List<dynamic>>> table;
//   int size;

//   HashTable(this.size) : table = List.generate(size, (_) => []);

//   int hashing(String key) {
//     int hashedKey = 0;
//     for (int i = 0; i < key.length; i++) {
//       hashedKey += key.codeUnitAt(i);
//     }
//     return hashedKey % size;
//   }

//   void set(String key, dynamic value) {
//     int index = hashing(key);
//     List<List<dynamic>> bucket = table[index];
//     for (int i = 0; i < bucket.length; i++) {
//       if (bucket[i][0] == key) {
//         bucket[i][1] = value;
//         return;
//       }
//     }
//     bucket.add([key, value]);
//   }

//   dynamic get(String key) {
//     int index = hashing(key);
//     List<List<dynamic>> bucket = table[index];
//     if (bucket.isEmpty) {
//       return "invalid key";
//     }
//     for (int i = 0; i < bucket.length; i++) {
//       if (bucket[i][0] == key) {
//         return bucket[i][1];
//       }
//     }
//     return "invalid key";
//   }

//   void print1(){
//     print(table);
//   }

//   void display() {
//     for (int i = 0; i < table.length; i++) {
//       if (table[i].isNotEmpty) {
//         print(table[i]);
//       }
//     }
//   }

//   void remove(String key) {
//     int index = hashing(key);
//     List<List<dynamic>> bucket = table[index];
//     if (bucket.isEmpty) {
//       print("the key is empty");
//       return;
//     }
//     for (int i = 0; i < bucket.length; i++) {
//       if (bucket[i][0] == key) {
//         print("removed ${bucket[i]}");
//         bucket.removeAt(i);
//         return;
//       }
//     }
//     print("the key is invalid");
//   }
// }

// void main() {
//   final table = HashTable(3);
//   table.set("name", 'akhil');
//   table.set("age", 40);
//   table.set("place", "feroke");
//   // // table.display();
//   // // table.remove("name");
//   table.set("name", 'kevin');
//   table.set('bike','splendor');
//   // table.display();
//   print(table.get('bike'));
//   // table.print1();
// }

// ---------------------------------------------------------------------------------
// HashTable(this.size) {
//   // Initialize the table as a list of empty lists
//   table = [];
//   for (int i = 0; i < size; i++) {
//     table.add([]);
//   }
// }
// ---------------------------------------------------------------------------------
//   int hashing(String key) {
//     int hashedKey = 0;
//     for (int i = 0; i < key.length; i++) {
//       hashedKey += key.codeUnitAt(i);
//     }
//     return hashedKey % size;
//   }

// class HashTable{
//   List<List<List<dynamic>>> table;
//   int size;
//   HashTable(this.size) : table= List.generate(size, (_) => []);

//   int hashing(String key){
//     int hashedKey=0;
//     for(int i=0;i<key.length;i++){
//       hashedKey += key.codeUnitAt(i);
//       }
//     return hashedKey % size;
//   }

// set(String key,dynamic value){
//   int index=hashing(key);
//   List<List<dynamic>> bucket=table[index];
//   for(int i=0;i<bucket.length;i++){
//     if(bucket[i][0]==key){
//       bucket[i][1]=value;
//     }
//   }
//   bucket.add([key,value]);
// }
// get(String key){
//   int index=hashing(key);
//   List<List<dynamic>> bucket=table[index];
//   if(bucket.isEmpty){
//     return 'no value';
//   }
//   for(int i=0;i<bucket.length;i++){
//     if(bucket[i][0]==key){
//       return bucket[i][1];
//     }
//   }
//   return 'no value';
// }

// remove(key){
//   int index=hashing(key);
//   List<List<dynamic>> bucket=table[index];
//   if(bucket.isEmpty){
//     return 'no value';
//   }
//   for(int i=0;i<bucket.length;i++){
//     if(bucket[i][0]==key){
//       bucket.removeAt(i);

//     }
//   }
// }
// display(){
//   print(table);
// }
// }

// void main(){
//   HashTable table=HashTable(3);
//   table.set('name', 'kevin');
//   table.set('age',26);
//   table.set('place','kannur');
//   // print(table.get('place'));
//   table.display();
// }

// Selection sort

// void selectionSort(List<int> nums) {
//   for (int i = 0; i < nums.length - 1; i++) {
//     int minIndex = i;
//     // Find the minimum element in the unsorted portion
//     for (int j = i + 1; j < nums.length; j++) {
//       if (nums[j] < nums[minIndex]) {
//         minIndex = j;
//       }
//     }
//     // Swap the found minimum element with the first element of the unsorted portion
//     if (minIndex != i) {
//       int temp = nums[i];
//       nums[i] = nums[minIndex];
//       nums[minIndex] = temp;
//     }
//   }
//   print(nums);
// }

// void main() {
//   List<int> nums = [8, 3, 5, 1, 7, 2];
//   selectionSort(nums); // Outputs: [1, 2, 3, 4, 5]
// }

// ---------------------------------------------------------------------------------------------

// class FixedSizeStack<T> {
//   final int _capacity;  // Maximum capacity of the stack
//   List<T> _stack=[];

//   // FixedSizeStack(this._capacity) : _stack = [];
//   FixedSizeStack(this._capacity);

//   // Push operation: Adds an element at the top of the stack
//   void push(T element) {
//     if (_stack.length == _capacity) {
//       print("Stack overflow! Cannot push $element");
//     } else {
//       _stack.add(element);
//       print("Pushed: $element");
//     }
//   }

//   // Pop operation: Removes and returns the top element
//   T? pop() {
//     if (isEmpty()) {
//       print("Stack underflow! Cannot pop.");
//       return null;
//     }
//     T removedElement = _stack.removeLast();
//     print("Popped: $removedElement");
//     return removedElement;
//   }

//   // Peek operation: Returns the top element without removing it
//   T? peek() {
//     if (isEmpty()) {
//       print("Stack is empty");
//       return null;
//     }
//     return _stack.last;
//   }

//   // Check if the stack is empty
//   bool isEmpty() {
//     return _stack.isEmpty;
//   }

//   // Get the size of the stack
//   int size() {
//     return _stack.length;
//   }
// }

// void main() {
//   FixedSizeStack<int> stack = FixedSizeStack<int>(3); // Fixed size of 3

//   // Trying to push more elements than the capacity
//   stack.push(1);  // OK
//   stack.push(20);  // OK
//   stack.push(30);  // OK
//   stack.push(40);  // Overflow! Stack has reached its capacity

//   // Pop elements
//   stack.pop();     // OK
//   stack.pop();     // OK
//   stack.pop();     // OK

//   // Trying to pop from an empty stack
//   stack.pop();     // Underflow! Stack is already empty
// }

// int hashing(String key) {
// int hashedKey = 1;
// // for (int i = 0; i < key.length; i++) {
// // hashedKey += key.codeUnitAt(i);
// // }
// return hashedKey % 6;
// }

// void main(){
//   print(hashing('bike'));
// }

// --------------------------------------------------------------------------------------
// class HashTable {
// List<List<List<dynamic>>> table;
// int size;
// int itemCount = 0;
// double loadFactor = 0.75;
// HashTable(this.size) : table = List.generate(size, (_) => []);
// int hashing(String key) {
// int hashedKey = 0;
// for (int i = 0; i < key.length; i++) {
// hashedKey += key.codeUnitAt(i);
// }
// return hashedKey % size;
// }
// void resize() {
// int newSize = size * 2;
// List<List<List<dynamic>>> newTable = List.generate(newSize, (_) => []);
// for (var bucket in table) {
//   for (var item in bucket) {
//     int newIndex = hashing(item[0]) % newSize;
//     newTable[newIndex].add(item);
//   }
// }

// size = newSize;
// table = newTable;
// }
// void set(String key, dynamic value) {
// if ((itemCount / size) >= loadFactor) {
// resize();
// }
// int index = hashing(key);
// List<List<dynamic>> bucket = table[index];
// for (int i = 0; i < bucket.length; i++) {
//   if (bucket[i][0] == key) {
//     bucket[i][1] = value;
//     return;
//   }
// }
// bucket.add([key, value]);
// itemCount++;
// }
// dynamic get(String key) {
// int index = hashing(key);
// List<List<dynamic>> bucket = table[index];
// if (bucket.isEmpty) {
// return null;
// }
// for (int i = 0; i < bucket.length; i++) {
// if (bucket[i][0] == key) {
// return bucket[i][1];
// }
// }
// return null;
// }
// void display() {
// for (int i = 0; i < table.length; i++) {
// if (table[i].isNotEmpty) {
// print("Bucket $i: ${table[i]}");
// }
// }
// }
// void remove(String key) {
// int index = hashing(key);
// List<List<dynamic>> bucket = table[index];
// if (bucket.isEmpty) {
// print("The key is not found");
// return;
// }
// for (int i = 0; i < bucket.length; i++) {
// if (bucket[i][0] == key) {
// print("Removed ${bucket[i]}");
// bucket.removeAt(i);
// itemCount--;
// return;
// }
// }
// print("The key is not found");
// }
// }
// // void main() {
// // final table = HashTable(4);
// // table.set("name", 'akhil');
// // table.set("age", 40);
// // table.set("place", "feroke");
// // table.set("name", 'kevin');
// // table.set('bike','splendor');
// // print("Before resizing:");
// // print(table.get('name'));
// // // table.display();
// // // table.set('car', 'toyota');
// // // print("\nAfter potential resizing:");
// // // table.display();
// // // print("\nGetting values:");
// // // print("bike: ${table.get('bike')}");
// // // print("car: ${table.get('car')}");
// // // table.remove("name");
// // // print("\nAfter removal:");
// // // table.display();
// // }

// void main() {
//   HashTable table = HashTable(3);// Use initial size of 3 to match the first code
//   table.set("name", 'kevin');
//   table.set("age", 26);
//   table.set("bike", "splendor");
//   table.set("car", "fortuner");

//   // Check if 'name' is retrieved correctly
//   print(table.get('name'));

//   // Optionally, display the entire hashtable to inspect its state
//   table.display();
// }

// --------------------------------------------------------------------------------------
// Hashtable with resize
// class Hashtable {
//   int size;
//   List<List<List<dynamic>>> table;
//   int itemCount = 0;
//   double loadFactor = 0.75;

//   Hashtable(this.size) : table = List.generate(size, (_) => []);

//   int calculateHash(String key) {
//     int hash = 0;
//     for (int i = 0; i < key.length; i++) {
//       hash += key.codeUnitAt(i);
//     }
//     return hash;
//   }

//   int getIndex(String key) {
//     return calculateHash(key) % size;
//   }

//   void resize() {
//     int newSize = size * 2;
//     List<List<List<dynamic>>> newTable = List.generate(newSize, (_) => []);
//     for (var bucket in table) {
//       for (var item in bucket) {
//         int newIndex = calculateHash(item[0]) % newSize;
//         newTable[newIndex].add(item);
//       }
//     }
//     size = newSize;
//     table = newTable;
//     print("Resized to $size"); // Debug print
//   }

//   void set(String key, dynamic value) {
//     if ((itemCount / size) >= loadFactor) {
//       resize();
//     }
//     int index = getIndex(key);
//     List<List<dynamic>> bucket = table[index];
//     for (int i = 0; i < bucket.length; i++) {
//       if (bucket[i][0] == key) {
//         bucket[i][1] = value;
//         print("Updated $key at index $index"); // Debug print
//         return;
//       }
//     }
//     bucket.add([key, value]);
//     itemCount++;
//     print("Added $key at index $index"); // Debug print
//   }

//   dynamic get(String key) {
//     int index = getIndex(key);
//     print("Getting $key, hashed to index $index"); // Debug print
//     List<List<dynamic>> bucket = table[index];
//     if (bucket.isEmpty) {
//       return 'no value';
//     }
//     for (int i = 0; i < bucket.length; i++) {
//       if (bucket[i][0] == key) {
//         return bucket[i][1];
//       }
//     }
//     return 'value not found';
//   }

//   void display() {
//     print("Current size: $size"); // Debug print
//     for (int i = 0; i < table.length; i++) {
//       if (table[i].isNotEmpty) {
//         print('table $i: ${table[i]}');
//       }
//     }
//   }
// }

// void main() {
//   Hashtable table = Hashtable(3);
//   table.set("name", 'kevin');
//   table.set("age", 26);
//   // table.set("bike", "splendor");
//   // table.set("car", "fortuner");

//   // print("Result of get('name'): ${table.get('name')}");
//   // table.display();
//   print(table.table);
// }

// ---------------------------------------------------------------------------

// // Node class for the linked list
// class Node {
//   int data;
//   Node? next;

//   Node(this.data);
// }

// // Stack using linked list
// class Stack {
//   Node? top; // This will be the head of the linked list

//   // Check if the stack is empty
//   bool isEmpty() {
//     return top == null;
//   }

//   // Push a new element onto the stack
//   void push(int data) {
//     Node newNode = Node(data);
//     newNode.next = top; // Point the new node to the current top
//     top = newNode; // Update the top to be the new node
//     print('$data pushed onto stack');
//   }

//   // Pop the top element from the stack
//   int? pop() {
//     if (isEmpty()) {
//       print('Stack is empty');
//       return null;
//     }
//     int poppedValue = top!.data;
//     top = top!.next; // Move the top pointer to the next node
//     print('$poppedValue popped from stack');
//     return poppedValue;
//   }

//   // Peek at the top element of the stack without removing it
//   int? peek() {
//     if (isEmpty()) {
//       print('Stack is empty');
//       return null;
//     }
//     return top!.data;
//   }

//   // Display the stack elements
//   void display() {
//     if (isEmpty()) {
//       print('Stack is empty');
//       return;
//     }
//     Node? current = top;
//     print('Stack elements:');
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }
// }

// void main() {
//   Stack stack = Stack();

//   stack.push(10);
//   stack.push(20);
//   stack.push(30);
//   // stack.display(); // Should show: 30 -> 20 -> 10

//   // print('Top element is: ${stack.peek()}');

//   stack.pop();
//   stack.display(); // Should show: 20 -> 10
// }

// --------------------------------------------------------------------

// peer
// class Node {
//   String key;
//   dynamic value;
//   Node? next;

//   Node(this.key, this.value);
// }

// class HashTable {
//   int size;
//   List<Node?> table;

//   HashTable(this.size) : table = List<Node?>.filled(size, null);

//   // Hash function to compute index
//   int _hashFunction(String key) {
//     int hash = 0;
//     for (int i = 0; i < key.length; i++) {
//       hash += key.codeUnitAt(i);
//     }
//     return hash % size;
//   }

//   // Insert key-value pair
//   void insert(String key, dynamic value) {
//     int index = _hashFunction(key);
//     Node newNode = Node(key, value);

//     if (table[index] == null) {
//       table[index] = newNode;
//     } else {
//       Node? current = table[index];
//       while (current != null) {
//         if (current.key == key) {
//           // Update value if key already exists
//           current.value = value;
//           return;
//         }
//         if (current.next == null) {
//           break;
//         }
//         current = current.next;
//       }
//       current?.next = newNode;
//     }
//   }

//   // Retrieve value by key
//   dynamic get(String key) {
//     int index = _hashFunction(key);
//     Node? current = table[index];

//     while (current != null) {
//       if (current.key == key) {
//         return current.value;
//       }
//       current = current.next;
//     }
//     return null; // Key not found
//   }

//   // Delete a key-value pair
//   dynamic remove(String key) {
//     int index = _hashFunction(key);
//     Node? current = table[index];
//     Node? prev;

//     while (current != null) {
//       if (current.key == key) {
//         if (prev == null) {
//           table[index] = current.next;
//         } else {
//           prev.next = current.next;
//         }
//         return current.value;
//       }
//       prev = current;
//       current = current.next;
//     }
//     return null; // Key not found
//   }
// }

// void main() {
//   HashTable hashTable = HashTable(10);

//   hashTable.insert('name', 'John');
//   hashTable.insert('age', 30);
//   hashTable.insert('profession', 'Developer');

//   print(hashTable.get('name')); // Output: John
//   print(hashTable.get('age'));  // Output: 30

//   hashTable.remove('age');
//   print(hashTable.get('age'));  // Output: null
// }

// ---------------------------------------------------------

// Stack using queues
// import 'dart:collection';

// class StackUsingQueues {
//   Queue<int> q1 = Queue<int>();
//   Queue<int> q2 = Queue<int>();

//   // Push an element onto the stack
//   void push(int x) {
//     q1.add(x);
//   }

//   // Pop the top element from the stack
//   int pop() {
//     if (q1.isEmpty) {
//       throw Exception("Stack is empty");
//     }

//     // Move all elements except the last from q1 to q2
//     while (q1.length > 1) {
//       q2.add(q1.removeFirst());
//     }

//     // The last element in q1 is the top of the stack
//     int topElement = q1.removeFirst();
    
//     // Swap q1 and q2, so q1 will again hold the elements
//     Queue<int> temp = q1;
//     q1 = q2;
//     q2 = temp;

//     return topElement;
//   }

//   // Return the top element of the stack
//   int top() {
//     if (q1.isEmpty) {
//       throw Exception("Stack is empty");
//     }

//     while (q1.length > 1) {
//       q2.add(q1.removeFirst());
//     }

//     int topElement = q1.first;

//     // Move the top element back to q2
//     q2.add(q1.removeFirst());

//     // Swap q1 and q2
//     Queue<int> temp = q1;
//     q1 = q2;
//     q2 = temp;

//     return topElement;
//   }

//   // Check if the stack is empty
//   bool isEmpty() {
//     return q1.isEmpty;
//   }
// }

// void main() {
//   StackUsingQueues stack = StackUsingQueues();

//   stack.push(10);
//   stack.push(20);
//   stack.push(30);

//   // print("Top element: ${stack.top()}"); // Output: Top element: 30

//   print("Popped element: ${stack.pop()}"); // Output: Popped element: 30
//   // print("Popped element: ${stack.pop()}"); // Output: Popped element:

//   // print("Top element: ${stack.top()}"); // Output: Top element: 20
  
// }

// ---------------------------------------------

// class QueueUsingStacks {
//   List<int> stack1 = [];
//   List<int> stack2 = [];

//   // Enqueue an element into the queue
//   void enqueue(int x) {
//     // Push element to stack1
//     stack1.add(x);
//   }

//   // Dequeue an element from the queue
//   int dequeue() {
//     // If both stacks are empty, the queue is empty
//     if (stack1.isEmpty && stack2.isEmpty) {
//       throw Exception("Queue is empty");
//     }

//     // If stack2 is empty, move all elements from stack1 to stack2
//     if (stack2.isEmpty) {
//       while (stack1.isNotEmpty) {
//         stack2.add(stack1.removeLast());
//       }
//     }

//     // Pop the top element from stack2 (the front of the queue)
//     return stack2.removeLast();
//   }

//   // Peek the front element of the queue
//   int peek() {
//     if (stack1.isEmpty && stack2.isEmpty) {
//       throw Exception("Queue is empty");
//     }

//     // If stack2 is empty, transfer elements from stack1 to stack2
//     if (stack2.isEmpty) {
//       while (stack1.isNotEmpty) {
//         stack2.add(stack1.removeLast());
//       }
//     }

//     // Return the top element from stack2 (the front of the queue)
//     return stack2.last;
//   }

//   // Check if the queue is empty
//   bool isEmpty() {
//     return stack1.isEmpty && stack2.isEmpty;
//   }
// }

// void main() {
//   QueueUsingStacks queue = QueueUsingStacks();

//   // Enqueue elements
//   queue.enqueue(10);
//   queue.enqueue(20);
//   queue.enqueue(30);

//   // Dequeue and display
//   print(queue.dequeue()); // Output: 10
//   // queue.enqueue(40);
//   // // print(queue.peek());    // Output: 20 (peek without removing)
//   // print(queue.dequeue()); // Output: 20
//   // // print(queue.isEmpty()); // Output: false
//   // print(queue.dequeue()); // Output: 30
//   // // print(queue.isEmpty()); // Output: true
//   //  print(queue.dequeue());
// }

// --------------------------------------------

// nw
// Stack using LinkedList
// class Node {
//   int data;
//   Node? next;
//   Node(this.data);
// }

// class Stack {
//   Node? top;

//   bool isEmpty() {
//     return top == null;
//   }

//   push(int data) {
//     Node newNode = Node(data);
//     newNode.next = top;
//     top = newNode;
//   }

//   pop() {
//     if (isEmpty()) {
//       return null;
//     }
//     int poppedValue = top!.data;
//     top = top!.next;
//     print('$poppedValue is poped out');
//   }

//   peak() {
//     int topValue = top!.data;
//     if (isEmpty()) {
//       print('Stack is empty');
//       return null;
//     }
//     return topValue;
//   }

//   display() {
//     Node? current = top;
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }
// }

// void main() {
//   Stack stack = Stack();
//   stack.push(10);
//   stack.push(20);
//   stack.push(30);
//   // stack.pop();
//   // print(stack.peak());
//   stack.display();
// }


// ----------------------------------------------------


// void main() {
//   List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8];
//   int target = 3;
//   print(binarySearch(target, arr));
// }

// binarySearch(int target, List<int> arr) {
//   int left = 0;
//   int right = arr.length - 1;

//   while (left <= right) {
//     int mid = ((left + right) / 2).floor();
//     if (target == arr[mid]) {
//       return mid;
//     } else if (target < arr[mid]) {
//       right = mid - 1;
//     } else {
//       left = mid + 1;
//     }
//   }
//   return -1;
// }

// void main(){
// binarySearch(arr,target){
//   int left=0;
//   int right=arr.length-1;

//   while(left<=right){
//     int mid=((left+right)/2).floor();
//     if(arr[mid]==target){
//       return mid;
//     }else if(arr[mid]>target){
//       right= mid-1;
//     }else{
//       left=mid+1;
//     }
//   }
//   return -1;
// }
// List<int> arr = [1,2,3,4,5,6,7,8,9];
// int target = 8;

// print(binarySearch(arr, target));
// }
