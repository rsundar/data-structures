# Start with your code from LinkedList challenge.
class Node
    attr_accessor :value, :next_node
    
    def initialize(value, next_node = nil)
        @value = value
      @next_node = next_node
    end
  end
  
  
  class Queue
    
    attr_accessor :tail, :head
    
    def initialize
      @tail = nil
      @head = nil
    end
    
    def add(number)
      # your code here
      node = Node.new(number,@tail)
      if @tail == nil
        @head = node
        @tail = node
      else
        @tail.next_node = node
        @tail = node
      end
    end
    
    def remove
      # your code here
      if @head == nil && @tail == nil
        return -1
      else
        value = @head.value
        @head = @head.next_node
        if @head == nil
          @tail = nil
        end
      end
      value
    end
  end
  
  queue = Queue.new
  
  puts queue.remove
  
  queue.add(3)
  queue.add(5)
  puts queue.remove
  # => 3
  
  queue.add(2)
  queue.add(7)
  puts queue.remove
  # => 5
  
  puts queue.remove
  # => 2
  
  puts queue.remove
  # => 7
  
  puts queue.remove
  # => -1