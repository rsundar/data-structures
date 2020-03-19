#!/bin/python

import math as m
import os
import random
import re
import sys

# Complete the encryption function below.
def encryption(s):
    l = len(s)
    sl = m.sqrt(l)
    r = int(m.floor(sl))
    c = int(m.ceil(sl))
    output = ""
    
    if (r * c) < l:
        r = c

    for i in range(0, c):
        o = s[i : l : c]
        print(o,i,c)
        output += o+" "
    return output
    
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = raw_input()

    result = encryption(s)

    fptr.write(result + '\n')

    fptr.close()
