#!/usr/bin/env python
#coding:utf8

import hashlib
import base64

md = hashlib.md5("client_id=client_secret")
md = md.hexdigest()
print md
base64.b64encode("client_id:client_secret")

