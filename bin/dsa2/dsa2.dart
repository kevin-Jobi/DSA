// class Hashtable {
//   int size;
//   List<List<List<dynamic>>> table;
//   Hashtable(this.size) : table = List.generate(size, (_) => []);

//   hashing(String key) {
//     int hashedKey = 0;
//     for (int i = 0; i < key.length; i++) {
//       hashedKey += key.codeUnitAt(i);
//     }
//     return hashedKey % size;
//   }

//   set(String key, dynamic value) {
//     int index = hashing(key);
//     List<List<dynamic>> bucket = table[index];
//     for (int i = 0; i < bucket.length; i++) {
//       if (bucket[i][0] == key) {
//         bucket[i][1] = value;
//         return;
//       }
//     }
//     bucket.add([key, value]);
//   }

//   get(String key) {
//     int index = hashing(key);
//     List<List<dynamic>> bucket = table[index];
//     if (bucket.length == 0) {
//       return 'no value';
//     }
//     for (int i = 0; i < bucket.length; i++) {  
//       if (bucket[i][0] == key) {
//         return bucket[i][1];
//       }
//     }
//     return 'value not found';
//   }

//   display() {
//     for (int i = 0; i < table.length; i++) {
//       print(table[i]);
//     }
//   }

//   remove(String key) {
//     int index = hashing(key);
//     List<List<dynamic>> bucket = table[index];
//     if (bucket.length == 0) {
//       return 'no value';
//     }
//     for (int i = 0; i < bucket.length; i++) {
//       if (bucket[i][0] == key) {
//         bucket.removeAt(i);
//       }
//     }
//   }
// }

// void main() {
//   Hashtable table = Hashtable(3);
//   table.set('name', 'kevin');
//   table.set('age', 26);
//   table.set('place', 'kannur');
//   // table.remove('age');
//   // table.display();
//   print(table.get('age'));
// }


