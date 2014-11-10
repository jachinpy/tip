#!/usr/bin/env python  
# -*- coding: utf-8 -*-
#filename=from QQ exmail to evernote.

from wheezy.core.mail import MailMessage
from wheezy.core.mail import SMTPClient
import ConfigParser
import sys


config = ConfigParser.ConfigParser()
config.readfp(open("/home/qingeng/.mailconfig", "rb")) #linux  ~/.mailcofig
host = config.get("global", "host") #smtp host
username = config.get("global", "username")
password = config.get("global", "password")
from_addr = config.get("global", "from")
to_addrs = config.get("global", "to")
root = config.get("global", "root") #you should write notepad, example  /home/user1/notepad/.


print "from  %s \n --> to %s" % (from_addr, to_addrs)

filename = root + sys.argv[1]

f = open(filename, "r")
title = f.readline()
content = title + f.read()
f.close()


mail = MailMessage(
    subject=title,
    content=content,
    content_type='text/html',
    charset='utf-8',
    from_addr=from_addr,
    to_addrs=[to_addrs])


client = SMTPClient(host=host, username=username, password=password)
client.send(mail)
print "+++++++++++++ end ++++++++++++++\n"
