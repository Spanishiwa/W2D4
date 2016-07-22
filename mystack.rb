class MyStack
  def initialize
    @store = []
    @max = []
    @min = []
  end

  def pop
    el = @store.pop
    @max = @max - [el]
    @min = @min - [el]
    return el
  end

  def push(el)
    @store.push(el)
    @max << el if @max.empty? || max <= el
    @min << el if @min.empty? || min >= el
    return el
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

  def max
    @max[-1]
  end

  def min
    @min[-1]
  end
end
