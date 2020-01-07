class Node
    attr_accessor :value, :next_node
    @@sizeOfStack = 0
    
    def initialize(value, next_node = nil)
        @value = value
      @next_node = next_node
    end
    
    def count
      return @@sizeOfStack
    end
  end
  
  class Stack
    attr_accessor :top, :min
    
      def initialize()
          @top = nil
      end
    
      def push(number)
          # Update min
          if top.nil?
              @min = number
          elsif number < @min
              prev_min = @min
              @min = number
              number = 2 * number - prev_min
          end
          # Add new node
          node = Node.new(number)
          if @top.nil?
              @top = node
          else
              node.next_node = @top
              @top = node
          end
      end
      
      def get_top
          @top.nil? ? nil : @top.value
      end
      
      def pop_node
          popped_node = @top
          @top = @top.next_node unless @top.nil?
          return popped_node
      end
      
      def pop
          top_node = self.pop_node
          if top_node.nil? 
              return nil
          elsif top_node.value >= @min 
              return top_node.value 
          else
              top_value = @min
              @min = 2 * @min - top_node.value
              return top_value
          end
      end
      
      def min
          @min
      end
      
      def to_s
          rep = ""
          ptr = @top
          while !ptr.nil?
              rep += "#{ptr.value}->"
              ptr = ptr.next_node
          end
          rep = rep[0...-2]
      end
  
  end
  
  stack = Stack.new
  stack.push(3)
  stack.push(5)
  puts stack.min
  # => 3
  
  stack.pop
  stack.push(7)
  puts stack.min
  # => 3
  
  stack.push(2)
  puts stack.min
  # => 2
  
  stack.pop
  puts stack.min
  # => 3