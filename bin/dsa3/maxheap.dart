class MaxHeap {
  List<int> _heap = [];

  int _parent(int i) => (i - 1) ~/ 2;
  int _leftIndex(int i) => 2 * i + 1;
  int _rightIndex(int i) => 2 * i + 2;

  void _heapifyDown(int parent) {
    int endIndex = _heap.length - 1;
    int leftIndex = _leftIndex(parent);
    int rightIndex = _rightIndex(parent);

    while (leftIndex <= endIndex) {
      int swapIndex;
      if (rightIndex <= endIndex && _heap[leftIndex] < _heap[rightIndex]) {
        swapIndex = rightIndex;
      } else {
        swapIndex = leftIndex;
      }

      if (_heap[parent] < _heap[swapIndex]) {
        int temp = _heap[parent];
        _heap[parent] = _heap[swapIndex];
        _heap[swapIndex] = temp;

        parent = swapIndex;
        leftIndex = _leftIndex(parent);
        rightIndex = _rightIndex(parent);
      } else {
        return;
      }
    }
  }

  void _heapifyUp(int index) {
    int parent = _parent(index);

    while (index > 0 && _heap[parent] < _heap[index]) {
      int temp = _heap[parent];
      _heap[parent] = _heap[index];
      _heap[index] = temp;

      index = parent;
      parent = _parent(index);
    }
  }

  void buildHeap(List<int> array) {
    _heap = array;
    int endParent = _parent(array.length - 1);
    for (int i = endParent; i >= 0; i--) {
      _heapifyDown(i);
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
  MaxHeap heap = MaxHeap();
  heap.buildHeap([-5, 3, 1, 11, 6, 22]);
  heap.display();
}
