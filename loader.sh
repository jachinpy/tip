#!/bin/bash


system_issue_recognition=$(cat /etc/issue)

if [[ $system_issue_recognition == *$Ubuntu* ]]
then
	echo "正在载入 Ubuntu 环境配置......"
	bash ./ubuntu.sh
else
	echo "正在载入 CentOs 环境配置......"
	bash ./centos.sh
fi
