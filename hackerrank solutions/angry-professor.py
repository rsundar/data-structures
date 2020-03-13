#!/bin/python

import math
import os
import random
import re
import sys

# Complete the angryProfessor function below.
def angryProfessor(k, a):
    output = "YES"
    early = []
    for i in a:
        if i <= 0:
            early.append(i)
    count = len(early)
    if (count<k):
        return output
    else:
        return "NO"
    
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    t = int(raw_input())

    for t_itr in xrange(t):
        nk = raw_input().split()

        n = int(nk[0])

        k = int(nk[1])

        a = map(int, raw_input().rstrip().split())

        result = angryProfessor(k, a)

        fptr.write(result + '\n')

    fptr.close()
