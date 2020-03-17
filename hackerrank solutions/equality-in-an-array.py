#!/bin/python

import math
import os
import random
import re
import sys

# Complete the equalizeArray function below.
def equalizeArray(arr):
    minimum = len(arr)
    for i in arr:
        n = arr.count(i)
        length_of_array = len(arr) - n
        minimum = min(minimum,length_of_array)
    return minimum

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(raw_input())

    arr = map(int, raw_input().rstrip().split())

    result = equalizeArray(arr)

    fptr.write(str(result) + '\n')

    fptr.close()
