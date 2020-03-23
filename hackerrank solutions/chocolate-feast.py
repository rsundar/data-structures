#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the chocolateFeast function below.
def chocolateFeast(n, c, m):
    chocolates = int(n/c)
    currentTotal = chocolates
    while(currentTotal >= m):
        wrappers = int(currentTotal/m)
        chocolates += wrappers
        currentTotal = wrappers + (currentTotal%m)
        
    return chocolates
    
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    t = int(input())

    for t_itr in range(t):
        ncm = input().split()

        n = int(ncm[0])

        c = int(ncm[1])

        m = int(ncm[2])

        result = chocolateFeast(n, c, m)

        fptr.write(str(result) + '\n')

    fptr.close()
