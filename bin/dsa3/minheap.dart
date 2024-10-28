class MinHeap { 
  List<int> _heap = [];

  // int get length => _heap.length;

  int _parent(int i) => (i - 1) ~/ 2;
  // int parent(int i) => (i - 1) ~/ 2;   // test test
  int _leftChild(int i) => 2 * i + 1;
  int _rightChild(int i) => 2 * i + 2;

  void _heapifyDown(int parent) {
    int endIndex = _heap.length - 1;
    int leftInd = _leftChild(parent);
    int rightInd = _rightChild(parent);

    while (leftInd <= endIndex) {
      int indexToShift;
      if (rightInd <= endIndex && _heap[rightInd] < _heap[leftInd]) {
        indexToShift = rightInd;
      } else {
        indexToShift = leftInd;
      }

      if (_heap[parent] > _heap[indexToShift]) {
        int temp = _heap[parent];
        _heap[parent] = _heap[indexToShift];
        _heap[indexToShift] = temp;

        parent = indexToShift;
        leftInd = _leftChild(parent);
        rightInd = _rightChild(parent);
      } else {
        return;
      }
    }
  }

  void _heapifyUp(int currentIndex) {
    int parentIndex = _parent(currentIndex);

    while (currentIndex > 0 && _heap[parentIndex] > _heap[currentIndex]) {
      int temp = _heap[parentIndex];
      _heap[parentIndex] = _heap[currentIndex];
      _heap[currentIndex] = temp;

      currentIndex = parentIndex;
      parentIndex = _parent(currentIndex);
    }
  }

  int? peek() {
    return _heap.isNotEmpty ? _heap[0] : null;
  }

  void buildHeap(List<int> array) {
    _heap = array;
    int endParent = _parent(array.length - 1);
    for (int i = endParent; i >= 0; i--) {
      _heapifyDown(i);
    }
  }

  void remove() {
    if (_heap.isEmpty) return;
    int lastElement = _heap.removeLast();
    if (_heap.isNotEmpty) {
      _heap[0] = lastElement;
      _heapifyDown(0);
    }
  }

  void insert(int value) {
    _heap.add(value);
    _heapifyUp(_heap.length - 1);
  }

  void display() {
    print(_heap);
  }
}

void main() {
  MinHeap heap = MinHeap();
  heap.insert(11);
  heap.insert(3);
  heap.insert(-5);
  heap.insert(1);
  heap.insert(22);
  heap.insert(7);
  heap.insert(6);
  heap.display();
  heap.remove();
  // print(heap.parent(1)); // test test
  heap.display();
  // List<int>arr=[11,3,-5,1,22];
  // heap.buildHeap(arr);
    // heap.display();
  // print(heap.peek());
}
