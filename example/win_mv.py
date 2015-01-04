#!/usr/bin/env python
#encoding:utf-8
import shutil
import sys


def dired_file_move(src, dst):
    print shutil.copytree(src, dst)
    return "Moving OK"

if __name__ == "__main__":
    src = sys.argv[1]
    dst = sys.argv[2]
    print dired_file_move(src, dst)
