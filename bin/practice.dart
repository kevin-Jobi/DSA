// Linked list

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
//       tail = newNode;
//     } else {
//       tail!.next = newNode;
//       tail = newNode;
//     }
//   }

//   removeDup() {
//     Node? temp = head;
//     while (temp != null && temp.next != null) {
//       if (temp.data == temp.next!.data) {
//         temp.next = temp.next!.next;
//       } else {
//         temp = temp.next;
//       }
//     }
//   }

//   arraytoLinkedList(List<int> arr) {
//     for (int i = 0; i < arr.length; i++) {
//       add(arr[i]);
//     }
//   }

//   addAfter(int afterData, int data) {
//     Node newNode = Node(data);
//     Node? temp = head;
//     while (temp != null && temp.data != afterData) {
//       temp = temp.next;
//     }

//     newNode.next = temp!.next;
//     temp.next = newNode;
//     if (temp == tail) {
//       tail = newNode;
//     }
//   }

//   search(int data) {
//     Node? current = head;
//     while (current != null) {
//       if (current.data == data) {
//         return true;
//       }
//       current = current.next;
//     }
//     return false;
//   }

//   deleteNode(int data) {
//     Node? prev;
//     Node? current = head;
//     if (head!.data == data) {
//       head = head!.next;
//       if (head == null) {
//         tail = null;
//         return;
//       }
//     }
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

//   insertBefore(beforeData, data) {
//     Node? newNode = Node(data);
//     Node? current = head;
//     if (current == null) return;
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
//     if (current == null) return;
//     prev!.next = newNode;
//     newNode.next = current;
//   }

//   addAtBeginning(int data){
//     Node newNode = Node(data);
//     newNode.next = head;
//     head = newNode;
//   }

//   display() {
//     Node? temp = head;
//     while (temp != null) {
//       print(temp.data);
//       temp = temp.next;
//     }
//   }
// }

// void main() {
//   LinkedList list = LinkedList();
//   list.add(10);
//   list.add(20);
//   list.add(20);
//   list.add(30);
//   list.removeDup();
//   List<int> arr = [1, 2, 3];
//   list.arraytoLinkedList(arr);
//   list.addAfter(2, 25);
//   print(list.search(2));
//   list.deleteNode(30);
//   list.insertBefore(3, 26);
//   list.display();
// }

// -------------------------------------------------

// Doubly linked list
// class Node{
//     int data;
//     Node? next;
//     Node? prev;
//     Node(this.data);
// }

// class DoublelyLinkedList{
//     Node? head;
//     Node? tail;

//     add(int data){
//         Node newNode = Node(data);
//         if(head == null){
//             head = newNode;
//             tail = newNode;
//         }else{
//             tail!.next = newNode;
//             newNode.prev = tail;
//             tail = newNode;
//         }
//     }

//     displayReverse(){
//         Node? temp = tail;
//         while(temp !=null){
//             print(temp.data);
//             temp = temp.prev;
//         }
//     }
// }

// void main(){
//     DoublelyLinkedList list = DoublelyLinkedList();
//     list.add(10);
//     list.add(20);
//     list.add(30);
//     list.displayReverse();
// }

// ---------------------------------------------------

// sum using recurssion
// int sumofArray(List<int> arr, int index) {
//   if (index == arr.length) {
//     return 0;
//   }

//   return arr[index] + sumofArray(arr, index + 1);
// }

// void main() {
//   List<int> arr = [1, 2, 3, 4, 5];
//   int sum = sumofArray(arr, 0);
//   print(sum);
// }
// -----------------------------------------------------
// Accessing private variables outside their class

// class Person{
//     String _name = 'kevin';
//     String get name =>_name;
//     set name(String value){
//         _name = value;
//     }
// }

// void main(){
//     Person person = Person();
//     print(person.name);
//     person.name= 'edvin';
//     print(person.name);
// }
// ----------------------------------------------------
// recursive binary search

// binarySearch(list,target,left,right){
//     if(left>right){
//         return null;
//     }
//     int mid = left + (right-left)~/2;

//     if(list[mid] == target){
//         return mid;
//     }else if(list[mid]>target){
//         return binarySearch(list, target, left, mid -1);
//     }else{
//         return binarySearch(list, target, mid + 1, right);
//     }
// }

// void main(){
// List<int>list =[2, 3, 5, 7, 11, 13, 17, 19, 23, 29];
// int target = 17;
// int index = binarySearch(list, target, 0, list.length-1);
// print(index);
// }

//---------------------------------------------------

// cascade operator

// class Steps{
//     step1(){
//         print('step 1 completed');
//     }
//     step2(){
//         print('step 2 completed');
//     }
// }

// void main(){
//     Steps step = Steps()
//     ..step1()
//     ..step2();

// }

// ------------------------------------------------------

//  DoublelyLinkedList
// class Node{
//     int data;
//     Node? prev;
//     Node? next;
//     Node(this.data);
// }
// class DoublelyLinkedList{
//     Node? head;
//     Node? tail;
//     add(int data){
//         Node newNode = Node(data);
//         if(head == null){
//             head = newNode;
//             tail = newNode;
//         }else{
//             tail!.next = newNode;
//             newNode.prev = tail;
//             tail = newNode;
//         }
//     }

//     display(){
//         Node? temp = head;
//         while(temp !=null){
//             print(temp.data);
//             temp = temp.next;
//         }
//     }

//     remove(int data){
//         Node? temp = head;
//         while(temp != null && temp.data != data){
//             temp = temp.next;
//         }
//         if(temp == head && temp == tail){
//             head = null;
//             tail = null;
//             return;
//         }else if(temp == head){
//             head = temp!.next;
//             head!.prev = null;
//             return;
//         }else if(temp == tail){
//             tail = tail!.prev;
//             tail!.next = null;
//         }else{
//             temp!.prev!.next = temp.next;
//             temp.next!.prev = temp.prev;
//         }
//     }

//     displayReverse(){
//         Node? temp = tail;
//         while(temp != null){
//             print(temp.data);
//             temp = temp.prev;
//         }
//     }

// }

// void main(){
//     DoublelyLinkedList list = DoublelyLinkedList();
//     list.add(10);
//     list.add(20);
//     list.add(30);
//     // list.display();
//     list.remove(30);
//     list.displayReverse();
// }

// -------------------------------------------------------

// class Node {
//   int data;
//   Node? next;
//   Node(this.data);
// }

// class LinkedList {
//   Node? head;
//   Node? tail;
//   add(int data) {
//     Node? newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//       tail = newNode;
//     } else {
//       tail!.next = newNode;
//       tail = newNode;
//     }
//   }

//   addAtBeginning(int data) {
//     Node newNode = Node(data);
//     newNode.next = head;
//     head = newNode;
//   }

//   addBefore(int beforeData, int data) {
//     Node newNode = Node(data);
//     Node? prev;
//     Node? temp = head;
//     while (temp != null && temp.data != beforeData) {
//       prev = temp;
//       temp = temp.next;
//     }
//     if(temp == null) return;
//     if (temp == head) {
//       newNode.next = temp;
//       head = newNode;
//       print('adsf');
//     } else {
//       prev!.next = newNode;
//       newNode.next = temp;
//     }
//   }

//   display() {
//     Node? temp = head;
//     while (temp != null) {
//       print(temp.data);
//       temp = temp.next;
//     }
//   }

//   remove(int data) {
//     Node? prev;
//     Node? temp = head;
//     while (temp != null && temp.data != data) {
//       prev = temp;
//       temp = temp.next;
//     }
//     if (temp == null) return;
//     if (temp == head && temp == tail) {
//       head = null;
//       tail = null;
//     } else if (temp == head) {
//       head = head!.next;
//     } else if (temp == tail) {
//       tail = prev;
//       prev!.next = null;
//     } else {
//       prev!.next = temp.next;
//     }
//   }
// }

// void main() {
//   LinkedList list = LinkedList();
//   list.add(10);
//   list.add(20);
//   list.add(30);
// //   list.remove(30);
//   list.addAtBeginning(5);
//   list.addBefore(20, 15);
//   list.display();
// }

// -------------------------------------------------------

// class Node{
//     int data;
//     Node? left;
//     Node? right;
//     Node(this.data);
// }

// class BST{
//     Node? root;
//     add(int data){
//         Node newNode = Node(data);
//         if(root == null){
//             root = newNode;
//         }else{
//             addNewNode(root, newNode);
//         }
//     }

//     addNewNode(root,newNode){
//         if(root.data>newNode.data){
//             if(root.left == null){
//                 root.left = newNode;
//             }else{
//                 addNewNode(root.left, newNode);
//             }
//         }else if (root.data<newNode.data){
//             if(root.right == null){
//                 root.right = newNode;
//             }else{
//                 addNewNode(root.right, newNode);
//             }
//         }
//     }

//     inorder(Node? root,[List<int>?list]){
//         list??=[];
//         if(root != null){
//             inorder(root.left,list);
//             list.add(root.data);
//             inorder(root.right,list);
//         }
//         return list;
//     }
// }

// void main(){
//     BST bst = BST();
//     bst.add(10);
//     bst.add(5);
//     bst.add(15);
//     print(bst.inorder(bst.root));
// }

// ----------------------------------------------------

// isPalindrome(String word,start,end){
// if(start>=end){
//   return true;
// }
// if(word[start] != word[end]){
//   return false;
// }
// return (isPalindrome(word, start + 1, end - 1));
// }

// void main(){
//   String word = 'radar';
//   if(isPalindrome(word, 0, word.length - 1)){
//     print('word is palindrome');
//   }else{
//     print('word is not palindrome');
//   }
// }

// ------------------------------------------

// class Graph {
//   Map<String, List<String>> adjacencyList = {};
//   addVertex(String vertex) {
//     if (!adjacencyList.containsKey(vertex)) {
//       adjacencyList[vertex] = [];
//     }
//   }

//   addEdge(String vertex, String destinationVertex,
//       {bool bidirectional = false}) {
//     if (!adjacencyList.containsKey(vertex)) {
//       addVertex(vertex);
//     }
//     if (!adjacencyList.containsKey(destinationVertex)) {
//       addVertex(destinationVertex);
//     }
//     if (!adjacencyList[vertex]!.contains(destinationVertex)) {
//       adjacencyList[vertex]!.add(destinationVertex);
//     }
//     if (bidirectional) {
//       if (!adjacencyList[destinationVertex]!.contains(vertex)) {
//         adjacencyList[destinationVertex]!.add(vertex);
//       }
//     }
//   }

//   bfs(String start) {
//     List<String> queue = [start];
//     Set<String> visited = {start};
//     List<String> result = [];
//     while (queue.isNotEmpty) {
//       String vertex = queue.removeAt(0);
//       result.add(vertex);
//       for (String neighbor in adjacencyList[vertex]!) {
//         if (!visited.contains(neighbor)) {
//           visited.add(neighbor);
//           queue.add(neighbor);
//         }
//       }
//     }
//     return result;
//   }

//   dfs(String start) {
//     List<String> stack = [start];
//     Set<String> visited = {start};
//     List<String> result = [];
//     while (stack.isNotEmpty) {
//       String vertex = stack.removeLast();
//       result.add(vertex);
//       for (String neighbor in adjacencyList[vertex]!) {
//         if (!visited.contains(neighbor)) {
//           visited.add(neighbor);
//           stack.add(neighbor);
//         }
//       }
//     }
//     return result;
//   }

//   deleteEdge(String vertex, String destinationVertex) {
//     if (adjacencyList.containsKey(vertex)) {
//       adjacencyList[vertex] = adjacencyList[vertex]!
//           .where((element) => element != destinationVertex)
//           .toList();
//     }
//     if (adjacencyList.containsKey(destinationVertex)) {
//       adjacencyList[destinationVertex] = adjacencyList[destinationVertex]!
//           .where((value) => value != vertex)
//           .toList();
//     }
//   }

//   deleteVertex(String vertex){
//     while(adjacencyList[vertex]!.isNotEmpty){
//       String adjacentVertex = adjacencyList[vertex]!.removeLast();
//       deleteEdge(vertex, adjacentVertex);
//     }
//     adjacencyList.remove(vertex);
//   }
// }

// void main() {
//   Graph graph = Graph();
//   graph.addEdge('a', 'b', bidirectional: true);
//   graph.addEdge('a', 'c', bidirectional: true);
//   graph.addEdge('b', 'c', bidirectional: true);
//   graph.addEdge('c', 'd', bidirectional: true);
//   graph.addVertex('e');
//   graph.addVertex('g');
//   // graph.deleteEdge('c', 'd');
//   graph.deleteVertex('c');
//   print(graph.adjacencyList);
//   // print(graph.bfs('a'));
//   // print(graph.dfs('a'));
// }

// ---------------------------------------------

// class Hashtable{
//   int size;
//   List<List<List<dynamic>>>table;
//   Hashtable(this.size):table=List.generate(size, (_) =>[]);
//   hashing(String key){
//     int hashedKey=0;
//     for(int i=0;i<key.length;i++){
//       hashedKey +=key.codeUnitAt(i);
//     }
//     return hashedKey%size;
//   }
//   set(String key,dynamic value){
//     int index = hashing(key);
//     List<List<dynamic>> bucket = table[index];
//     for(int i = 0;i<bucket.length;i++){
//       if(bucket[i][0]==key){
//         bucket[i][1] = value;
//       }
//     }
//     bucket.add([key,value]);
//   }
//   get(String key){
//     int index = hashing(key);
//     List<List<dynamic>> bucket = table[index];
//     for(int i =0;i<bucket.length;i++){
//       if(bucket[i][0]==key){
//         return bucket[i][1];
//       }
//     }
//   }

//   remove(String key){
//     int index = hashing(key);
//     List<List<dynamic>> bucket = table[index];
//     for(int i =0;i<bucket.length;i++){
//       if(bucket[i][0]==key){
//         bucket.removeAt(i);
//       }
//     }
//   }

// display(){
//   for(int i = 0;i<table.length;i++){
//     print(table[i]);
//   }
// }
// }

// void main(){
//   Hashtable table = Hashtable(3);
//   table.set('name', 'kevin');
//   table.set('age', 26);
//   table.set('place', 'kannur');
//   table.remove('age');
//   table.display();

//   // print(table.get('age'));
//   }

//-----------------------------------------------------------

class Person{
    int age;
    String name;
    Person(this.name,this.age);
    
    Person.otherName():name ='david',age=0;

    display(){
        print('name:$name,age:$age');
    }
}

void main(){
    Person person = Person('manu', 16);
    Person person1 = Person.otherName();
    person1.display();
    person.display();
}