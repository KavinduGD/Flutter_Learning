import 'dart:collection';

void main(List<String> args) {
  final queue = Queue<int>(); // ListQueue() by default
  print(queue.runtimeType); // ListQueue

// Adding items to queue
  queue.addAll([1, 2, 3]);
  queue.addFirst(0);
  queue.addLast(10);
  print(queue); // {0, 1, 2, 3, 10}

// Removing items from queue
  queue.removeFirst();
  queue.removeLast();
  print(queue); // {1, 2, 3}
}
