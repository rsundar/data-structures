#!/bin/python

import math
import os
import random
import re
import sys

# Complete the cavityMap function below.
def cavityMap(grid):
    
    for i in xrange(1,len(grid)-1):
        for j in xrange(1,len(grid)-1):
            cur = int(grid[i][j])
            left = int(grid[i][j-1])
            right = int(grid[i][j+1])
            top = int(grid[i-1][j])
            bottom = int(grid[i+1][j])

            if(cur>left and cur>right and cur> top and cur>bottom):
                e = grid[i][j]
                grid[i][j].replace(e,'X')
    
    return grid
            
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(raw_input())

    grid = []

    for _ in xrange(n):
        grid_item = raw_input()
        grid.append(grid_item)

    result = cavityMap(grid)

    fptr.write('\n'.join(result))
    fptr.write('\n')

    fptr.close()
