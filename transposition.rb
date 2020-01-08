def transpose(string)
    # your code here
    geque = []
    result = []
    str = string.split("")
    str.each_with_index do |c,i|
      if(c=='n')
        geque.unshift(c)
      elsif(c=='g')
        geque.push(c)
      else
        result += geque + [c]
        geque = []
      end
    end
    result += geque unless geque.empty?
    result.join
end
  
  puts transpose('he was searchign on Bign for signign kigns')
  # => he was searching on Bing for singing kings
  
  puts transpose('rignadingdiggn!')
  # => ringadingdingg!
  
  puts transpose('gngngnnggnngggnnn')
  # => nnnnnnnnngggggggg