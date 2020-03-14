#!/bin/python

import math
import os
import random
import re
import sys

def findDigits(n):
    number = str(n)
    count = 0 #count the number of divisors of n
    for i in number: 
        d = int(i)
        if(d != 0):
            if( n%d == 0 ):
                count += 1
    return count

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    t = int(raw_input())

    for t_itr in xrange(t):
        n = int(raw_input())

        result = findDigits(n)

        fptr.write(str(result) + '\n')

    fptr.close()
