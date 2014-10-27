# _*_ coding: utf8 _*_
#filename=win_mv.py  moving dirctory and files.

import shutil
import sys


def move(src, dst):
    """
    arg1  arg2  src to dst.
    copy dirs and files to an not exist dir.
    """
    shutil.copytree(src, dst)
    return True

if __name__ == "__main__":
    src = sys.argv[1]
    dst = sys.argv[2]
    print move(src, dst)