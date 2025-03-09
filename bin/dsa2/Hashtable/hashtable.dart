class HashTable {
  int size;
  List<List<List<dynamic>>> table;
  int itemCount = 0;
  double loadFactor = 0.75;
  HashTable(this.size) : table = List.generate(size, (_) => []);
  hashing(String key) {
    int hash = 0;
    for (int i = 0; i < key.length; i++) {
      hash += key.codeUnitAt(i);
    }
    return hash;
  }

  getIndex(String key) {
    return hashing(key) % size;
  }

  resize() {
    int newSize = size * 2;
    List<List<List<dynamic>>> newTable = List.generate(newSize, (_) => []);
    for (var bucket in table) {
      for (var item in bucket) {
        int index = hashing(item[0]) % newSize;
        newTable[index].add(item);
      }
    }
    size = newSize;
    table = newTable;
  }

  set(String key, dynamic value) {
    if((itemCount/size)>=loadFactor)resize();
    int index = getIndex(key);
    List<List<dynamic>> bucket = table[index];
    for (int i = 0; i < bucket.length; i++) {
      if (bucket[i][0] == key) {
        bucket[i][1] = value;
        return;
      }
    }
    bucket.add([key, value]);
    itemCount++;
  }

  get(String key) {
    int index = getIndex(key);
    List<List<dynamic>> bucket = table[index];
    for (int i = 0; i < bucket.length; i++) {
      if (bucket[i][0] == key) {
        return bucket[i][1];
      }
    }
    return 'value not found';
  }
  display(){
    for(int i=0;i<table.length;i++){
      if(table[i].isNotEmpty){
        print('bucket $i : ${table[i]}');
      }
    }
  }
}

void main(){
  HashTable table = HashTable(3);
table.set('name','kevin');
table.set('age', '27');
// print(table.get('name'));
table.display();
}