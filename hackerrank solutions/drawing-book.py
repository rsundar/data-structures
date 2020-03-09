#!/bin/python

from __future__ import print_function

import os
import sys

#
# Complete the pageCount function below.
#
def pageCount(n, p):
    #
    # Write your code here.
    #
    
    pages_from_end = ((n+2)/2)-((p+2)/2-1)-1
    pages_from_begining = (p+2)/2-1
    if(pages_from_end > pages_from_begining):
        return pages_from_begining
    else:
        return pages_from_end

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(raw_input())

    p = int(raw_input())

    result = pageCount(n, p)

    fptr.write(str(result) + '\n')

    fptr.close()