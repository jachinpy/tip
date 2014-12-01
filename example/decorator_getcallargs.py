#!/usr/bin/env python
# -*- coding: utf-8 -*-

from inspect import getcallargs

"""
smart_do 获取 ex  函数传递的参数。
"""

def smart_do(func):
    """每次都需要判断arg来看是否做哪些事情好烦有没有
    """
    def inner(*args, **kwargs):
        all_args = getcallargs(func, *args, **kwargs)
	print all_args
        arg = all_args.get('a')
        return func(*args, **kwargs)
    return inner

@smart_do
def ex(a,b,arg=True):
    if a == b:
        a = "equal"

ex(12, 12)
