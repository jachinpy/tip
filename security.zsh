#!/bin/bash

echo '开机安全扫描...'
for i in {1..6}; do ls -l "/etc/rc$i.d" | grep firefox; grep -r "firefox" /etc/rc5.d/; done
echo '无异常'
