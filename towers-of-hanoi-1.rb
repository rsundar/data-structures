def move(starting, goal)
    intermediate = ([1, 2, 3] - [starting, goal]).first
    result = text(starting, intermediate) + " "
    result += text(starting, goal) + " "
    result+= text(intermediate, goal)
    result
end
  
def text(from, to)
    "#{from}->#{to}"
end

puts move(1, 3)
# => 1->2 1->3 2->3
  
puts move(2, 3)
# => 2->1 2->3 1->3