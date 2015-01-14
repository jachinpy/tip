#! /usr/bin/env python
#-*- coding:utf-8 -*-
import json

js = {"haha": "哈哈"}
print json.dumps(js)
print json.dumps(js, ensure_ascii=False)  #  ensure_ascii locate.

