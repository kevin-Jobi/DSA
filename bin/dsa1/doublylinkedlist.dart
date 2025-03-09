class Node {
  int data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class DoublyLinkedList {
  Node? head;
  Node? tail;
  add(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
      tail = newNode;
    }
  }

  addAtBeginning(int data) {
    Node? newNode = Node(data);
    newNode.next = head;
    head!.prev = newNode;
    head = newNode;
  }

  addAfter(int afterData, int newData) {
    Node? curr = head;
    Node newNode = Node(newData);
    while (curr != null && curr.data != afterData) {
      curr = curr.next;
    }
    if (curr != null && curr == tail) {
      curr.next = newNode;
      newNode.prev = curr;
      tail = newNode;
    } else if (curr != null) {
      newNode.next = curr.next;
      curr.next!.prev = newNode;
      curr.next = newNode;
      newNode.prev = curr;
      if (curr == tail) {
        tail = newNode;
      }
    }
  }

  printList() {
    Node? curr = head;
    while (curr != null) {
      print(curr.data);
      curr = curr.next;
    }
  }

  delete(int data) {
    Node? curr = head;
    while (curr!.data != data) {
      curr = curr.next;
    }
    if (curr == head && curr == tail) {
      head = null;
      tail = null;
    } else if (curr == head) {
      head = curr.next;
      head!.prev = null;
    } else if (curr == tail) {
      tail = tail!.prev;
      tail!.next = null;
    } else {
      curr.prev!.next = curr.next;
      curr.next!.prev = curr.prev;
    }
  }

  DisplayReverse() {
    Node? curr = tail;
    while (curr != null) {
      print(curr.data);
      curr = curr.prev;
    }
  }
}

void main() {
  DoublyLinkedList list = DoublyLinkedList();
  list.add(10);
  list.add(20);
  list.add(30);
// list.delete(30);
  list.addAtBeginning(5);
  list.addAfter(11, 25);
  list.printList();
}
