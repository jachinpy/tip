#!/usr/bin/env python
#-*- coding:utf8 -*-


class Hand(object):
    def __init__(self, north, east, south, west):
        # Input parameters are lists of cards ('Ah', '9s', etc)
        self.north = north
        self.east = east
        self.south = south
        self.west = west

a = Hand(34, 5, 6, 7)
print a, a.north, a.east

X = type('X', (), {'foo': lambda self: 'foo'})
print X, X().foo()


class P():
    pass
print P()


class Person:
    def __init__(self, name):
        self.name = name

    def say(self):
        print "my name is", self.name
print Person(3)
Person('test').say()
