class Queue {
  List<int> queue = [];
  enqueue(int data) {
    queue.add(data);
  }

  dequeue() {
    if (queue.isEmpty) return 'no data';
    return queue.removeAt(0);
  }

  peak() {
    if (queue.isEmpty) return 'no data';
    return queue.first;
  }
}
void main(){
  Queue queue = Queue();
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);
  print(queue.dequeue());
    print(queue.dequeue());

}