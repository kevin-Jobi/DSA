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

// --------------------------

class Node {
  int data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;
  add(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      tail = newNode;
    }
  }

  search(int data){
    Node? current = head;
    while(current!=null){
      if(current.data == data){
        return true;
      }
      current = current.next;
    }
    return false;
  }

  addAtBeginning(int data){
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  addAfter(int afterData,int newData){
    Node? current = head;
    while(current!=null && current.data != afterData){
      current = current.next;
    }
    if(current!=null){
      Node? newNode = Node(newData);
      newNode.next = current.next;
      current.next = newNode;
    }
    
  }

  delete(int data){
    Node? prev;
    Node? current = head;
    if(current!.data == data){
      head = current.next;
      return;
    }
    while(current!=null &&  current.data !=data){
      prev = current;
      current = current.next;
    }
    if(current!=null){
      prev!.next = current.next;
      if(prev.next == null){
        tail = prev;
      }
    }

  }

  reverse() {
    Node? curr = head;
    Node? prev;
    while(curr!=null){
      Node? cnex = curr.next;
      curr.next = prev;
      prev = curr;
      curr = cnex;
    }
    head = prev;
  }
  printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList list = LinkedList();
  list.add(10);
  list.add(20);
  list.add(30);
  // list.reverse();
  // list.delete(30);
  print(list.search(20));
  list.addAtBeginning(5);
  list.addAfter(20, 25);
  list.printList();
}
