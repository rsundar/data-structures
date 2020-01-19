#!/bin/ruby

require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(arr)
   length = arr.length()
   
   pos = arr.count{|n| n>0}
   
   neg = arr.count{|n| n<0}
   
   zero = arr.count{|n| n==0}
   

   pos_frac = pos/length.to_f
   neg_frac = neg/length.to_f
   zero_frac = zero/length.to_f

   puts pos_frac.to_f
   puts neg_frac.to_f
   puts zero_frac.to_f
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

plusMinus arr