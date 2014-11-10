tip
========

当前项目仅供参考。

###chapter1
	# todo

###script
  
  #### plain 工具
	这是一个命令行可以在本地编辑好html文件上传至evernote的工具。通过smtp系统和evernote自身的邮件功能制作而成的。
	功能单一。

```python
	git clone git@github.com:jachinpy/tip.git
	mkvirtualenv tip
	workon tip
	pip install -r requirement.txt 
```
	linux下
		vim 	~/.mailconfig
	example:
```python
[global]
host=smtp.qq.com
username=1234@qq.com
password=****
from=1234@qq.com
to=1234@sina.com #send define here.
root=/home/lucifer/Documents/notepad/
```
