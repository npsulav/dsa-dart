class Queue {
  // Unlike stacks, a [Queue] is open at both its ends.
  //One end is always used to insert data (enqueue)
  //and the other is used to remove data (dequeue).
  //Queue follows First-In-First-Out methodology,
  //i.e., the data item stored first will be accessed first.

  List listOfQueue = [];

  Queue({required this.listOfQueue});

  void enqueue(element) {
    // Adds an element from the front of the Queue
    List tempList = listOfQueue.reversed.toList();
    tempList.add(element);
    listOfQueue = tempList.reversed.toList();
  }

  void dequeue() {
    // Removes the lastest element from the Queue
    List tempList = listOfQueue;
    tempList.removeAt(listOfQueue.length - 1);
    listOfQueue = tempList;
  }

  peek() {
    // peeks the first element of the Queue
    return listOfQueue[0];
  }

  bool isEmpty() {
    // returns the emptyness of the Queue instance
    return (listOfQueue.length == 0);
  }
}

void main() {
  Queue q = new Queue(listOfQueue: [1, 2, 3]);
  print(q.listOfQueue);

  q.enqueue(5);
  print(q.listOfQueue);
  q.dequeue();
  print(q.peek());
  print(q.isEmpty());
}
