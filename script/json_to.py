#! /usr/bin/env python
#-*- coding:utf-8 -*-
import json

js = {"haha": "哈哈"}
print json.dumps(js), json.dumps(js, ensure_ascii=False)


