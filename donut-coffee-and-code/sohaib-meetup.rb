#!/bin/ruby

require 'json'
require 'stringio'

$magic_square = [[[8,1,6],[3,5,7],[4,9,2]],
                 [[4,3,8],[9,5,1],[2,7,6]],
                 [[2,9,4],[7,5,3],[6,1,8]],
                 [[6,7,2],[1,5,9],[8,3,4]],
                 [[6,1,8],[7,5,3],[2,9,4]],
                 [[8,3,4],[1,5,9],[6,7,2]],
                 [[4,9,2],[3,5,7],[8,1,6]],
                 [[2,7,6],[9,5,1],[4,3,8]]]
# Complete the formingMagicSquare function below.
def formingMagicSquare(s)
    out = 100
    for i in 0...8 do
        cost = 0
        for j in 0...3 do
            for k in 0...3 do
                cost += ($magic_square[i][j][k] - s[j][k]).abs
            end
        end
        puts cost
        out = [out, cost].min
    end 
    out
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = Array.new(3)

3.times do |i|
    s[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = formingMagicSquare s

fptr.write result
fptr.write "\n"

fptr.close()