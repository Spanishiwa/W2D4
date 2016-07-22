class Queue
  def initialize
    @store = []
  end

  def enqueue(el)
    @store.shift(el)
  end

  def dequeue
    @store.pop(el)
  end

  def peek
    @store.dup.last
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end

end
