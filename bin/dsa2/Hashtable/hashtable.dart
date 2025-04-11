// class HashTable {
//   int size;
//   List<List<List<dynamic>>> table;
//   int itemCount = 0;
//   double loadFactor = 0.75;
//   HashTable(this.size) : table = List.generate(size, (_) => []);
  
//   hashing(String key) {
//     int hash = 0;
//     for (int i = 0; i < key.length; i++) {
//       hash += key.codeUnitAt(i);
//     }
//     return hash;
//   }

//   getIndex(String key) {
//     return hashing(key) % size;
//   }

//   resize() {
//     int newSize = size * 2;
//     List<List<List<dynamic>>> newTable = List.generate(newSize, (_) => []);
//     for (var bucket in table) {
//       for (var item in bucket) {
//         int index = hashing(item[0]) % newSize;
//         newTable[index].add(item);
//       }
//     }
//     size = newSize;
//     table = newTable;
//   }

//   set(String key, dynamic value) {
//     if ((itemCount / size) >= loadFactor) resize();
//     int index = getIndex(key);
//     List<List<dynamic>> bucket = table[index];
//     for (int i = 0; i < bucket.length; i++) {
//       if (bucket[i][0] == key) {
//         bucket[i][1] = value;
//         return;
//       }
//     }
//     bucket.add([key, value]);
//     itemCount++;
//   }

//   get(String key) {
//     int index = getIndex(key);
//     List<List<dynamic>> bucket = table[index];
//     for (int i = 0; i < bucket.length; i++) {
//       if (bucket[i][0] == key) {
//         return bucket[i][1];
//       }
//     }
//     return 'value not found';
//   }

//   display() {
//     for (int i = 0; i < table.length; i++) {
//       if (table[i].isNotEmpty) {
//         print('bucket $i : ${table[i]}');
//       }
//     }
//   }
//     delete(String key){
//     int index = getIndex(key);
//     List<List<dynamic>>bucket=table[index];
//     for(int i=0;i<bucket.length;i++){
//       if(bucket[i][0]==key){
//         bucket.remove(bucket[i]);
//         itemCount--;
//         return true;
//       }
//     }
//     return false;
//   }
// }

// void main() {
//   HashTable table = HashTable(3);
//   table.set('name', 'kevin');
//   table.set('age', '27');
//   table.delete('age');
// // print(table.get('name'));
//   table.display();
// }




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