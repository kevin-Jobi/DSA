class MaxHeap {
  List<int> _heap = [];

  int _parent(int i) => (i - 1) ~/ 2;
  int _leftChild(int i) => 2 * i + 1;
  int _rightChild(int i) => 2 * i + 2;

  void _heapifyDown(int parent) {
    int lastIndex = _heap.length - 1;
    int left = _leftChild(parent);
    int right = _rightChild(parent);

    while (left <= lastIndex) {
      int swap;
      if (right <= lastIndex && _heap[right] > _heap[left]) {
        swap = right;
      } else {
        swap = left;
      }

      if (_heap[swap] > _heap[parent]) {
        int temp = _heap[swap];
        _heap[swap] = _heap[parent];
        _heap[parent] = temp;

        parent = swap;
        left = _leftChild(parent);
        right = _rightChild(parent);
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

  void remove() {
    if (_heap.isEmpty) return;
    _heap[0] = _heap.last;
    _heap.removeLast();
    _heapifyDown(0);
  }

  int? peek() {
    return _heap.isNotEmpty ? _heap[0] : null;
  }

  void build(List<int> arr) {
    _heap = arr;
    int parent = _parent(arr.length - 1);
    for (int i = parent; i >= 0; i--) {
      _heapifyDown(i);
    }
  }

  List<int> sort(List<int> arr) {
    build(arr);
    List<int> sorted = [];
    
    while (_heap.isNotEmpty) {
      sorted.add(peek()!);
      remove();
    }
    return sorted;
  }

  void display() {
    print(_heap);
  }
}

void main() {
  MaxHeap heap = MaxHeap();
  List<int> sorted = heap.sort([4, 10, 3, 5, 1]);
  print(sorted);
}
