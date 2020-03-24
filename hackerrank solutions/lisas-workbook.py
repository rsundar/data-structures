#!/bin/python

import math
import os
import random
import re
import sys

# Complete the workbook function below.
def workbook(n, k, arr):
    pages = 0
    problemsInPage = 0
    specialProblems = 0
    pageNumber = 1
    listOfProblems = dict()
    chapterNumber = 1
    
    for i in arr:
        pages = (i + k - 1)/k
        for j in xrange(pages):
            if pageNumber >=(j*k)+1 and pageNumber <=min((j+1)*k,i):
                specialProblems += 1
            pageNumber += 1
    
    return specialProblems

    
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    nk = raw_input().split()

    n = int(nk[0])

    k = int(nk[1])

    arr = map(int, raw_input().rstrip().split())

    result = workbook(n, k, arr)

    fptr.write(str(result) + '\n')

    fptr.close()
