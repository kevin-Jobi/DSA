// import 'dart:collection';

// void main() {
//   // Number of nodes
//   int N = 7, Root = 1;
//   // Adjacency list to store the tree
//   List<List<int>> adj = List.generate(N + 1, (_) => []);
//   // Creating the tree
//   addEdge(1, 2, adj);
//   addEdge(1, 3, adj);
//   addEdge(1, 4, adj);
//   addEdge(2, 5, adj);
//   addEdge(2, 6, adj);
//   addEdge(4, 7, adj);

//   // Driver code
//   // Printing the parents of each node
//   print("The parents of each node are:");
//   printParents(Root, adj, 0);
//   // Printing the children of each node
//   print("The children of each node are:");
//   printChildren(Root, adj);
//   // Printing the leaf nodes in the tree
//   print("The leaf nodes of the tree are:");
//   printLeafNodes(Root, adj);
//   // Printing the degrees of each node
//   print("The degrees of each node are:");
//   printDegrees(Root, adj);
// }

// // Function to add an edge between vertices x and y
// void addEdge(int x, int y, List<List<int>> arr) {
//   arr[x].add(y);
//   arr[y].add(x);
// }

// // Function to print the parent of each node
// void printParents(int node, List<List<int>> arr, int parent) {
//   // current node is Root, thus, has no parent
//   if (parent == 0)
//     print('$node->Root');
//   else
//     print('$node->$parent');

//   // Using DFS
//   for (int cur in arr[node]) {
//     if (cur != parent)
//       printParents(cur, arr, node);
//   }
// }

// // Function to print the children of each node
// void printChildren(int Root, List<List<int>> arr) {
//   // Queue for the BFS
//   Queue<int> q = Queue<int>();

//   // pushing the root
//   q.add(Root);

//   // visit array to keep track of nodes that have been visited
//   List<int> vis = List.filled(arr.length, 0);
//   // BFS
//   while (q.isNotEmpty) {
//     int node = q.removeFirst();
//     vis[node] = 1;
//     print('$node-> ');
//     for (int cur in arr[node]) {
//       if (vis[cur] == 0) {
//         print('$cur ');
//         q.add(cur);
//       }
//     }
//     print('');
//   }
// }

// // Function to print the leaf nodes
// void printLeafNodes(int Root, List<List<int>> arr) {
//   // Leaf nodes have only one edge and are not the root
//   for (int i = 1; i < arr.length; i++) {
//     if (arr[i].length == 1 && i != Root)
//       print('$i ');
//   }
//   print('');
// }

// // Function to print the degrees of each node
// void printDegrees(int Root, List<List<int>> arr) {
//   for (int i = 1; i < arr.length; i++) {
//     print('$i: ');

//     // Root has no parent, thus, its degree is equal to
//     // the edges it is connected to
//     if (i == Root)
//       print('${arr[i].length}');
//     else
//       print('${arr[i].length - 1}');
//   }
// }

// ------------------------------------------------------------------------------------

// class Node {
//   int value;
//   Node? left;
//   Node? right;

//   Node(this.value);
// }

// class Tree {
//   Node? root;

//   bool isEmpty() {
//     return root == null;
//   }

//   void set(int value) {
//     Node node = Node(value);
//     if (isEmpty()) {
//       root = node;
//       return;
//     }
//     insertNewNode(root!, node);
//   }

//   void insertNewNode(Node root, Node node) {

//     if (root.value > node.value) {
//       if (root.left == null) {
//         root.left = node;
//       } else {
//         insertNewNode(root.left!, node);
//       }
//     } else {
//       if (root.value < node.value) {
//         if (root.right == null) {
//           root.right = node;
//         } else {
//           insertNewNode(root.right!, node);
//         }
//       }
//     }
//   }

// void search(int value) {
//   if (isEmpty()) {
//     print("The tree is empty");
//     return;
//   }
//   Node? temp = root;
//   while (temp != null) {
//     if (temp.value == value) {
//       print(true);
//       return;
//     } else if (value < temp.value) {
//       temp = temp.left;
//     } else {
//       temp = temp.right;
//     }
//   }
//   print(false);
// }

//   int? max([Node? root]) {
//     root ??= this.root;
//     if (root == null) {
//       print("The tree is empty");
//       return null;
//     }
//     if (root.right == null) return root.value;
//     return max(root.right);
//   }

//   int? min([Node? root]) {
//     root ??= this.root;
//     if (root == null) {
//       print("The tree is empty");
//       return null;
//     }
//     if (root.left == null) return root.value;
//     return min(root.left);
//   }

//   List<int> inOrderTraversal([Node? root]) {
//     root ??= this.root;
//     if (root == null) return [];
//     return [
//       ...inOrderTraversal(root.left),
//       root.value,
//       ...inOrderTraversal(root.right)
//     ];
//   }

//   void preOrderTraversal([Node? root]) {
//     root ??= this.root;
//     if (root != null) {
//       print(root.value);
//       preOrderTraversal(root.left);
//       preOrderTraversal(root.right);
//     }
//   }

//   void postOrderTraversal([Node? root]) {
//     root ??= this.root;
//     if (root != null) {
//       postOrderTraversal(root.left);
//       postOrderTraversal(root.right);
//       print(root.value);
//     }
//   }

//   Node? deletion(int target, [Node? root]) {
//     root ??= this.root;
//     if (root == null) return null;
//     if (target < root.value) {
//       root.left = deletion(target, root.left);
//     } else if (target > root.value) {
//       root.right = deletion(target, root.right);
//     } else {
//       if (root.right == null) {
//         return root.left;
//       }
//       if (root.left == null) {
//         return root.right;
//       }
//       root.value = min(root.right)!;
//       root.right = deletion(root.value, root.right);
//     }
//     return root;
//   }

//   bool isBST() {
//     List<int> sorted = inOrderTraversal();
//     for (int i = 0; i < sorted.length - 1; i++) {
//       if (sorted[i] > sorted[i + 1]) return false;
//     }
//     return true;
//   }

//   String closest(int target, [Node? root]) {
//     root ??= this.root;
//     if (root == null) return "The tree is empty";
//     int dif = 2147483647; // Max int value in Dart
//     int? value;
//     while (root != null) {
//       int d = (root.value - target).abs();
//       if (d < dif && root.value != target) {
//         dif = d;
//         value = root.value;
//       }
//       if (root.value > target) {
//         root = root.left;
//       } else if (root.value < target) {
//         root = root.right;
//       } else {
//         break;
//       }
//     }
//     return "$value : $dif";
//   }

//   void console() {
//     print(root!.right!.left!.value);
//   }
// }

// void main() {
//   final tree = Tree();
//   tree.set(3);
//   tree.set(1);
//   tree.set(9);
//   tree.set(8);
//   tree.set(13);
//   tree.preOrderTraversal();
//   tree.search(8);
//   tree.console();
//   print(tree.min());
//   print(tree.max());
//   tree.deletion(1);
//   tree.console();
//   print(tree.closest(150));
//   print(tree.isBST());
// }

// class Node {
//   int value;
//   Node? left;
//   Node? right;

//   Node(this.value);
// }

// class Tree {
//   Node? root;

//   bool isEmpty() {
//     return root == null;
//   }

//   void set(int value) {
//     Node node = Node(value);
//     if (isEmpty()) {
//       root = node;
//       return;
//     }
//     // Check for duplicates to avoid infinite recursion
//     if (!search(value, printMessage: false)) {
//       insertNewNode(root!, node);
//     }
//   }

//   void insertNewNode(Node root, Node node) {
//     if (root.value > node.value) {
//       if (root.left == null) {
//         root.left = node;
//       } else {
//         insertNewNode(root.left!, node);
//       }
//     } else if (root.value < node.value) {
//       if (root.right == null) {
//         root.right = node;
//       } else {
//         insertNewNode(root.right!, node);
//       }
//     }
//   }

//   bool search(int value, {bool printMessage = true}) {
//     if (isEmpty()) {
//       if (printMessage) print("The tree is empty");
//       return false;
//     }
//     Node? temp = root;
//     while (temp != null) {
//       if (temp.value == value) {
//         if (printMessage) print(true);
//         return true;
//       } else if (value < temp.value) {
//         temp = temp.left;
//       } else {
//         temp = temp.right;
//       }
//     }
//     if (printMessage) print(false);
//     return false;
//   }

//   int? max([Node? root]) {
//     root ??= this.root;
//     if (root == null) {
//       print("The tree is empty");
//       return null;
//     }
//     while (root!.right != null) {
//       root = root.right;
//     }
//     return root.value;
//   }

//   int? min([Node? root]) {
//     root ??= this.root;
//     if (root == null) {
//       print("The tree is empty");
//       return null;
//     }
//     while (root!.left != null) {
//       root = root.left;
//     }
//     return root.value;
//   }

//   List<int> inOrderTraversal([Node? root]) {
//     root ??= this.root;
//     if (root == null) return [];
//     return [
//       ...inOrderTraversal(root.left),
//       root.value,
//       ...inOrderTraversal(root.right)
//     ];
//   }

// void preOrderTraversal([Node? root, Set<Node>? visited]) {
//   root ??= this.root;
//   visited ??= <Node>{};

//   if (root != null && !visited.contains(root)) {
//     print(root.value);
//     visited.add(root); // Mark this node as visited
//     preOrderTraversal(root.left, visited);
//     preOrderTraversal(root.right, visited);
//   }
// }

//   void postOrderTraversal([Node? root]) {
//     root ??= this.root;
//     if (root != null) {
//       postOrderTraversal(root.left);
//       postOrderTraversal(root.right);
//       print(root.value);
//     }
//   }

//   Node? deletion(int target, [Node? root]) {
//     root ??= this.root;
//     if (root == null) return null;

//     if (target < root.value) {
//       root.left = deletion(target, root.left);
//     } else if (target > root.value) {
//       root.right = deletion(target, root.right);
//     } else {
//       if (root.right == null) {
//         return root.left;
//       }
//       if (root.left == null) {
//         return root.right;
//       }
//       root.value = min(root.right)!;
//       root.right = deletion(root.value, root.right);
//     }
//     if (this.root == root && target == root.value) {
//       this.root = root.left ?? root.right; // Handle root deletion properly
//     }
//     return root;
//   }

//   bool isBST() {
//     List<int> sorted = inOrderTraversal();
//     for (int i = 0; i < sorted.length - 1; i++) {
//       if (sorted[i] > sorted[i + 1]) return false;
//     }
//     return true;
//   }

//   String closest(int target, [Node? root]) {
//     root ??= this.root;
//     if (root == null) return "The tree is empty";
//     int dif = 2147483647; // Max int value in Dart
//     int? value;
//     while (root != null) {
//       int d = (root.value - target).abs();
//       if (d < dif && root.value != target) {
//         dif = d;
//         value = root.value;
//       }
//       if (root.value > target) {
//         root = root.left;
//       } else if (root.value < target) {
//         root = root.right;
//       } else {
//         break;
//       }
//     }
//     return value != null ? "$value : $dif" : "No closest value found";
//   }

//   void console() {
//     if (root == null) {
//       print("The tree is empty");
//     } else if (root?.right?.left != null) {
//       print(root!.right!.left!.value);
//     } else {
//       print("The specified node path does not exist.");
//     }
//   }
// }

// void main() {
//   final tree = Tree();
//   tree.set(3);
//   tree.set(1);
//   tree.set(9);
//   tree.set(8);
//   tree.set(13);
//   // tree.preOrderTraversal();
//   tree.inOrderTraversal();
//   // tree.search(8);
//   // tree.console();
//   // print(tree.min());
//   // print(tree.max());
//   // tree.deletion(1);
//   // tree.console();
//   // print(tree.closest(150));
//   // print(tree.isBST());
// }

// ----------------------------------------------------------
// sahal

class Node {
  int data;
  Node? left;
  Node? right;

  Node(this.data);
}

class BST {
  Node? root;

  // BST();

  void insert(int data) {
    Node newNode = Node(data);
    if (root == null) {
      root = newNode;
      return;
    }
    insertNode(root!, newNode);
  }

  void insertNode(Node root, Node newNode) {
    if (root.data > newNode.data) {
      if (root.left == null) {
        root.left = newNode;
      } else {
        insertNode(root.left!, newNode);
      }
    } else if (root.data < newNode.data) {
      if (root.right == null) {
        root.right = newNode;
      } else {
        insertNode(root.right!, newNode);
      }
    }
  }

  bool contains(Node? root, int target) {
    if (root == null) {
      return false;
    }
    if (root.data == target) {
      return true;
    } else if (root.data > target) {
      return contains(root.left, target);
    } else {
      return contains(root.right, target);
    }
  }

  void search(int value) {
    if (root == null) {
      print("The tree is empty");
      return;
    }
    Node? temp = root;

    while (temp != null) {
      if (temp.data == value) {
        print(true);
        return;
      } else if (value < temp.data) {
        temp = temp.left;
      } else {
        temp = temp.right;
      }
    }
    print(false);
  }

  List<int> preorder(Node? root, [List<int>? list]) {
    list ??= [];
    if (root != null) {
      list.add(root.data);
      preorder(root.left, list);
      preorder(root.right, list);
    }

    return list;
  }

  List<int> inorder(Node? root, [List<int>? list]) {
    list ??= [];
    if (root != null) {
      inorder(root.left, list);
      list.add(root.data);
      inorder(root.right, list);
    }
    return list;
  }

  List<int> postorder(Node? root, [List<int>? list]) {
    list ??= [];
    if (root != null) {
      postorder(root.left, list);
      postorder(root.right, list);
      list.add(root.data);
    }
    return list;
  }

  int? min(Node? root) {
    if (root == null) {
      return null;
    }
    while (root!.left != null) {
      root = root.left;
    }
    return root.data;
  }

  int? max(Node? root) {
    if (root == null) {
      return null;
    }
    while (root!.right != null) {
      root = root.right;
    }
    return root.data;
  }

  Node? deleteNode(Node? root, int target) {
    if (root == null) {
      return null;
    }
    if (target < root.data) {
      root.left = deleteNode(root.left, target);
    } else if (target > root.data) {
      root.right = deleteNode(root.right, target);
    } else {
      if (root.left == null) {
        return root.right;
      }
      if (root.right == null) {
        return root.left;
      }
      root.data = min(root.right)!;
      root.right = deleteNode(root.right, root.data);
    }
    return root;
  }

  // Height function
  int height(Node? root) {
    if (root == null) {
      return -1;
    }
    int leftHeight = height(root.left);
    int rightHeight = height(root.right);
    return 1 + (leftHeight > rightHeight ? leftHeight : rightHeight);
  }
}

void main() {
  BST bst = BST();
  bst.insert(10);
  bst.insert(20);
  bst.insert(15);
  // bst.insert(15);
  // bst.insert(12);
  // bst.insert(20);
  // bst.insert(4);
 bst.root = bst.deleteNode(bst.root, 10);
 bst.insert(25);
  // print(bst.max(bst.root));
  // print(bst.min(bst.root));
  print(bst.preorder(bst.root));
  print(bst.contains(bst.root, 5));
  // bst.search(10);
  //  print(bst.preorder(bst.root)); // Output the preorder traversal
  // print(bst.inorder(bst.root)); // Output the inorder traversal
  // print(bst.postorder(bst.root)); // Output the postorder traversal
  // print(bst.height(bst.root));
}
