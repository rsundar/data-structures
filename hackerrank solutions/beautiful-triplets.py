#!/bin/python

import math
import os
import random
import re
import sys

# Complete the beautifulTriplets function below.
def beautifulTriplets(d, arr):
    count = 0
    for i in range(0,len(arr)):
        if(((arr[i] + d) in arr) and ((arr[i] + 2*d) in arr)):
            count += 1
    return count

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    nd = raw_input().split()

    n = int(nd[0])

    d = int(nd[1])

    arr = map(int, raw_input().rstrip().split())

    result = beautifulTriplets(d, arr)

    fptr.write(str(result) + '\n')

    fptr.close()
