#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the timeInWords function below.
def timeInWords(h, m):
   
    nums = ["zero","one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen","twenty","twenty one","twenty two","twenty three","twenty four","twenty five","twenty six","twenty seven","twenty eight","twenty nine"]
    out = ""
    if (m == 0):
        out = nums[h]+" o' clock"

    elif (m == 1):
        out = "one minute past "+nums[h]

    elif (m == 59):
        out = "one minute to "+nums[(h%12)+1]

    elif (m == 15):
        out = "quarter past "+nums[h]

    elif (m == 30):
        out = "half past "+nums[h]

    elif (m == 45):
        out = "quarter to "+nums[(h%12)+1]

    elif (m <= 30): 
        out = nums[m]+" minutes past "+nums[h] 
    elif (m > 30):
        out = nums[60-m]+" minutes to "+nums[(h%12)+1]
    
    return out

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    h = int(input())

    m = int(input())

    result = timeInWords(h, m)

    fptr.write(result + '\n')

    fptr.close()
