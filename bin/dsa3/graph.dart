class Graph {
  Map<String, List<String>> adjacencyList = {};

  void addVertex(String vertex) {
    if (!adjacencyList.containsKey(vertex)) {
      adjacencyList[vertex] = [];
    }
  }

  void addEdge(String vertex, String destinationVertex,
      {bool bidirectional = false}) {
    if (!adjacencyList.containsKey(vertex)) {
      addVertex(vertex);
    }
    if (!adjacencyList.containsKey(destinationVertex)) {
      addVertex(destinationVertex);
    }

    if (!adjacencyList[vertex]!.contains(destinationVertex)) {
      adjacencyList[vertex]!.add(destinationVertex);
    }

    if (bidirectional) {
      if (!adjacencyList[destinationVertex]!.contains(vertex)) {
        adjacencyList[destinationVertex]!.add(vertex);
      }
    }
  }

  void deleteEdge(String vertex, String destinationVertex) {
    if (adjacencyList.containsKey(vertex)) {
      adjacencyList[vertex] =
          adjacencyList[vertex]!.where((v) => v != destinationVertex).toList();
    }
    if (adjacencyList.containsKey(destinationVertex)) {
      adjacencyList[destinationVertex] =
          adjacencyList[destinationVertex]!.where((v) => v != vertex).toList();
    }
  }

  void deleteVertex(String vertex) {
    if (adjacencyList.containsKey(vertex)) {
      while (adjacencyList[vertex]!.isNotEmpty) {
        String adjacentVertex = adjacencyList[vertex]!.removeLast();
        deleteEdge(vertex, adjacentVertex);
      }
      adjacencyList.remove(vertex);
    }
  }

  List<String> bfs(String start) {
    List<String> queue = [start];
    Set<String> visited = {start};
    List<String> result = [];

    while (queue.isNotEmpty) {
      String vertex = queue.removeAt(0);
      result.add(vertex);

      for (String neighbor in adjacencyList[vertex]!) {
        if (!visited.contains(neighbor)) {
          visited.add(neighbor);
          queue.add(neighbor);
        }
      }
    }
    return result;
  }

  List<String> dfs(String start) {
    List<String> stack = [start];
    Set<String> visited = {start};
    List<String> result = [];

    while (stack.isNotEmpty) {
      String vertex = stack.removeLast();
      result.add(vertex);

      for (String neighbor in adjacencyList[vertex]!) {
        if (!visited.contains(neighbor)) {
          visited.add(neighbor);
          stack.add(neighbor);
        }
      }
    }
    return result;
  }
}

void main() {
  Graph graph = Graph();
  graph.addVertex('A');
  graph.addVertex('B');
  graph.addVertex('C');
  graph.addVertex('D');
  graph.addVertex('E');
  graph.addVertex('G');
  graph.addEdge('A', 'B', bidirectional: true);
  graph.addEdge('A', 'C', bidirectional: true);
  graph.addEdge('B', 'C', bidirectional: true);
  graph.addEdge('C', 'D', bidirectional: true);
  // graph.addEdge('B', 'E', bidirectional: true);

  print("Graph before deleting vertex:");
  // graph.deleteEdge('A','B');
  print(graph.adjacencyList);

  // graph.deleteVertex('A');

  // print("Graph after deleting vertex:");
  // print(graph.adjacencyList);

  print("BFS traversal from vertex 'A': ${graph.bfs('A')}");
  print("DFS traversal from vertex 'A': ${graph.dfs('A')}");
}
