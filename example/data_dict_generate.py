# -*- coding: utf-8 -*-
from random import randint
import itertools
import time

letters = [chr(i) for i in xrange(65, 91)]
if len(letters) != 26:
    print "this is an error."

nums = [str(x) for x in xrange(10)]
nums.extend(letters)

data =  list(itertools.combinations(nums, 6))
time.sleep(5)
data = ["".join(list(i)) for i in data]
print data
