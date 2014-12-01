#! /usr/bin/env python
# -*- coding:utf8 -*-

"""
example: 用于说明运算符重载问题。
"""
class A(object):
    def __eq__(self, other):
        print "A __eq__ called: %r == %r ?" % (self, other)
        return self.value == other
class B(object):
    def __eq__(self, other):
        print "B __eq__ called: %r == %r ?" % (self, other)
        return self.value == other

a = A()
a.value = 3
b = B()
b.value = 4
a == b
