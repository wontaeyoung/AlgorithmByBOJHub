struct QueuePointer<T> {
  private var elements: [T]
  private var front = 0
  
  init(elements: [T]) {
    self.elements = elements
  }

  var isEmpty: Bool {
    elements.count < front + 1
  }

  var count: Int {
    elements.count - front
  }

  func peek() -> T? {
    front < elements.count ? elements[front] : nil
  }

  mutating func enqueue(with element: T) {
    elements.append(element)
  }

  @discardableResult
  mutating func dequeue() -> T? {
    if !isEmpty {
      defer { front += 1 }
      return elements[front]
    } else {
      return nil
    }
  }
}

let input = Int(readLine()!)!
let list = Array(1...input)
var queue = QueuePointer<Int>(elements: list)

while queue.count != 1 {
    queue.dequeue()
    guard let element = queue.dequeue() else { break }
    queue.enqueue(with: element)
}

print(queue.peek()!)