class Node
    attr_accessor :value, :next_node
    
    def initialize(value, next_node = nil)
        @value = value
      @next_node = next_node
    end
end
  
  class LinkedList
    #setup head and tail
    attr_accessor :head, :tail
    
    def initialize()
      @head = nil
      @tail = nil
    end
    
    def add(number)
      # your code here
      node = Node.new(number)
      if tail == nil
        @head = node
        @tail = node
      else
        @tail.next_node = node
        @tail= node
      end
    end
  
    def get(index)
      # your code here
      if index==0
        return @head.value
      else
        current_node = @head
        
          # index.times do
          #   current_node = current_node.next_node
          #   if current_node == nil
          #     return nil
          # end
        while index > 0 && current_node
          current_node = current_node.next_node
          index -= 1
        end
        if current_node.nil? 
          return nil
        else
          return current_node.value
        end
    end
  end
  
  list = LinkedList.new
  
  list.add(3)
  list.add(5)
  list.add(15)
  list.add('mary had a little lamb.')
  puts list.get(3)
  end
  