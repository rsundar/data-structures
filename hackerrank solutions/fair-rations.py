#!/bin/python

import math
import os
import random
import re
import sys

def checkIsEven(n):
    if n%2 == 0:
        return True
    return False

# Complete the fairRations function below.
def fairRations(B):
    loavesGiven = 0
    for i in xrange(len(B)-1):
        if not checkIsEven(B[i]):
            B[i+1] += 1
            B[i] += 1
            loavesGiven += 2
    if checkIsEven(B[-1]):
        return loavesGiven
    else:
        return "NO"
        
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    N = int(raw_input())

    B = map(int, raw_input().rstrip().split())

    result = fairRations(B)

    fptr.write(str(result) + '\n')

    fptr.close()
