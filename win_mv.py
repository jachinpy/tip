#!/usr/bin/env python
#encoding:utf-8
import shutil
import sys


def win_mv(src, dst):
    print shutil.copytree(src, dst)
    return "Moving OK"

if __name__ == "__main__":
    src = sys.argv[1]
    dst = sys.argv[2]
    print win_mv(src, dst)
