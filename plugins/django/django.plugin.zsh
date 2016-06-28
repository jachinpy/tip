#!/bin/bash


alias jsp='python manage.py shell_plus'
alias jr='python manage.py runserver'
alias jt="python manage.py test "
alias jd="python manage.py dbshell"
alias jsy="python manage.py syncdb"

# 测试用例环境脚本, 默认文件名是 .env
DEFAULT_DJANGO_TEST_ENV='.env'

# 第一次创建 .env后，手动备份文件
function env-backup () {
	cp .env .env.orig　
}

# 初始化环境
function env-init () {
	cp .env .env.prod
	cp .env .env.dev
	cp .env .env.tes
}

# checkout abbr. 切换环境
function env-co () {
	cp $1 .env
	cat .env
}


# list test env.
function env-list () {
	ls .env*
}

alias ecd='echo "你现在处于　dev 分支。" && env-co .env.dev'
alias ecp='echo "你现在处于　prod 分支。" && env-co .env.prod'
alias ect='echo "你现在处于　test 分支。" && env-co .env.tes'
alias ecl='env-list'

