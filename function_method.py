#!/usr/bin/python
#coding:utf8


def r(list=[]):
    pass


def r2(**kwargs):
    """
    **表示函数接收
    字典对象.
    """
    return kwargs

if __name__ == "__main__":
    kwargs = {"a": 2}
    print r(), r2(**kwargs), r2.__doc__

