bubbleSort(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    bool sorted = true;
    for (int j = 0; j < arr.length - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;

        sorted = false;
      }
    }

    if (sorted)break;
    
  }
  print(arr);
}

void main() {
  List<int> arr = [12, 11, 13, 5, 6];
  bubbleSort(arr);
}
