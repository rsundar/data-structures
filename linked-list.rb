# Start with your code from last challenge.
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
    
    @@listCount = 0
    
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
    
    def add_at(index,value)
      prev_node = @head
      if index == 0
        new_node = Node.new(value,@head)
        @head = new_node
      else
      index.times do |i|
        if i < index-1  
          prev_node = prev_node.next_node
        end
      end
      new_node = Node.new(value)
      new_node.next_node = prev_node.next_node
      prev_node.next_node = new_node
    end
    end
    
    def remove(index)
      prev_node = @head
      cur_node = @head
      if index == 0
        @head = @head.next_node
        if @head == nil
          @tail = nil
        end
      else
        index.times do |i|
          cur_node = cur_node.next_node
          if i < index - 1
            prev_node = prev_node.next_node
          end
        end
        if cur_node == @tail
          @tail = prev_node
        else
          prev_node.next_node = cur_node.next_node
        end
      end
    end
    
    def print_list()
      node = @head
      while node != nil
        print (node.value)
        print (" ")
        node = node.next_node
      end
    end
    
    def count
      return @@listCount
    end
  end
  
  
  list = LinkedList.new
  
  list.add(3)
  list.add(5)
  list.add_at(1, 11)
  list.add_at(0, 13)
  
  puts list.get(2)
  # => 11
  
  puts list.get(3)
  # => 5
  
  list.remove(2)
  list.add(200)
  
  list.print_list()
  
  puts list.count