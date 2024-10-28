class Node {
  Map<String, Node> children = {};
  bool isWordEnd = false;
}

class Trie {
  Node root = Node();

  void insert(String word) { 
    Node curr = root;
    for (int i = 0; i < word.length; i++) {
      String charToInsert = word[i];
      if (!curr.children.containsKey(charToInsert)) {
        curr.children[charToInsert] = Node();
      }
      curr = curr.children[charToInsert]!;
    }
    curr.isWordEnd = true;
  }

  bool contains(String word) {
    Node curr = root;
    for (int i = 0; i < word.length; i++) {
      String charToFind = word[i];
      if (!curr.children.containsKey(charToFind)) {
        return false;
      }
      curr = curr.children[charToFind]!;
    }
    return curr.isWordEnd;
  }

  bool startsWithPrefix(String prefix) {
    Node curr = root;
    for (int i = 0; i < prefix.length; i++) {
      String charToFind = prefix[i];
      if (!curr.children.containsKey(charToFind)) {
        return false;
      }
      curr = curr.children[charToFind]!;
    }
    return true;
  }

  List<String> autocomplete(String prefix) {
    Node curr = root;
    for (int i = 0; i < prefix.length; i++) {
      String charToFind = prefix[i];
      if (!curr.children.containsKey(charToFind)) {
        return [];
      }
      curr = curr.children[charToFind]!;
    }
    List<String> words = [];
    _collectWords(curr, prefix, words);
    return words;
  }

  void _collectWords(Node node, String prefix, List<String> words) {
    if (node.isWordEnd) {
      words.add(prefix);
    }
    node.children.forEach((char, child) {
      _collectWords(child, prefix + char, words);
    });
  }

    bool delete(String word) {
    return _delete(root, word, 0);
  }

  bool _delete(Node curr, String word, int index) {
    if (index == word.length) {
      if (!curr.isWordEnd) {
        return false; // Word not found
      }
      curr.isWordEnd = false;
      return curr.children.isEmpty; // If true, node can be deleted
    }

    String charToDelete = word[index];
    Node? child = curr.children[charToDelete];
    if (child == null) {
      return false; // Word not found
    }

    bool shouldDeleteCurrentNode = _delete(child, word, index + 1);

    // Remove the mapping if the child node should be deleted
    if (shouldDeleteCurrentNode) {
      curr.children.remove(charToDelete);
      return curr.children.isEmpty && !curr.isWordEnd;
    }

    return false;
  }
}

void main() {
  Trie trie = Trie();
  trie.insert("apple");
  trie.insert("app");
  trie.insert("apricot");
  trie.delete('apple');
  print(trie.autocomplete("ap")); // Output: ["apple", "app", "apricot"]
  // print(trie.startsWithPrefix('ak'));
}
