#! /usr/bin/env python
# -*- coding:utf-8 -*-


# reduce is a  Multivariate function.
xy = reduce(lambda x,y: x+y, [1, 2, 3])
print xy

xy = reduce(lambda x, y: x+y, [1,2,3], 9)
print xy

xy = reduce(lambda x,y: x+y, [1, 2, 3], 7)
print xy


ps = int.__pos__(-1)
print ps

# map is a Multivalued function.
num = (1, 2, 3, -1, -2)

neg =  map(int.__neg__, num)
print neg, "正面"


pos = map(int.__pos__, num)
print pos, "反面"

neglist = map(lambda x, y:x+y,  num, num)
print neglist

likezip = map(None, num, num)
print likezip

# zip is a Single value function.
zipl = zip(num, num)
print zipl
#unzip with * operator.
x, y = zip(*zipl)
print x
