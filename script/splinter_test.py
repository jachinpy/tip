#!/user/bin/python
# -*- coding: utf8 -*-

import sys
import re
from splinter.browser import Browser

#####################################################
# global instance
CLOASE_AFTER_TEST = False
GBK = "gbk"
UTF8 = "utf8"

#####################################################
# encoding for console
reload(sys)
sys.setdefaultencoding(UTF8)

#####################################################
# small method, linux use utf-8, windows use gbk
encoding = lambda x: x.encode('utf-8')


def testLogin(desc, username, password, result):
    """
        fill login form message and submit, check result message and print
    """
    output(desc)
    browser.fill('userName', username.decode(UTF8))
    browser.fill('password', password.decode(UTF8))
    browser.find_by_value('登录').first.click()
    checkresult(result)


def output(x):
    """
        encode and print
    """
    print encoding(x)


def resultMsg(x):
    """
        judge result and print, x : True or False
    """
    if x == True:
        print 'pass'
    else:
        print '[X]not pass'


def checkresult(x):
    """
        check result message, x : the error message u want
    """
    resultMsg(browser.is_text_present(x))




__testUrl = 'https://passport.baidu.com/v2/?login&tpl=mn&u=http%3A%2F%2Fwww.baidu.com%2F'

# chrome driver : http://code.google.com/p/selenium/wiki/ChromeDriver
# already support firefox
browser = Browser()
browser.visit(__testUrl)

output("测试页面:" + browser.title)

try:
    # test login
    testLogin('测试未输入用户名','','','用户名或密码错误')
    testLogin('测试未输入密码', '凭栏对月行知', '', '用户名或密码错误')
    testLogin('测试帐户不存在', '这是一个不存在的名字哦', 'xxxxxxx', '用户名或密码错误')
    testLogin('测试成功登录', '凭栏对月行知', 'qq982451085', '进入展示页面')

    # test find password
    browser.back()
    output(u"测试[忘记密码]链接")
    browser.visit(__testUrl)
    backPasswordLink = browser.find_link_by_text('忘记密码')
    if 1 == len(backPasswordLink):
        backPasswordLink.first.click()
        ru = re.findall(re.compile(".*(reg/gp.htm).*", re.IGNORECASE), browser.url)
        if ru is not None:
            checkresult('忘记密码')
        else:
            output("测试忘记密码链接失败")

except Exception, x:
    print x

if CLOASE_AFTER_TEST:
    browser.quit()