#!/bin/bash


MAXTOP=20
declare TOP=0 
declare -a ZNCH_QUEUE

push()
{
    if [ -z "$1" ] #若无输入任何参数，立即返回
    then
        return
    fi
    while [ $# != 0 ] # $#表示参数的个数
    do
        if [ "$TOP" = $MAXTOP ]
        then
            unset ZHCN_QUEUE\[1] 
            ZHCN_QUEUE=( "${ZHCN_QUEUE[@]}" )
            let TOP=$MAXTOP
            ZHCN_QUEUE[$TOP]=$1
            shift
            return
        fi
        let TOP=TOP+1 
        ZHCN_QUEUE[$TOP]=$1 
        shift 
    done
    return
}

show_zhcn()
{
for i in ${ZHCN_QUEUE[@]}
do
    echo $i
done
echo "TOP=$TOP"
}


# show root dir
alias rd="show_zhcn"
# show print file dir

function rp(){
    ZHCN_FULLPATH=$(realpath `tree -if -L 1`)
    echo $ZHCN_FULLPATH
}

declare -a ZHCN_DIRNAMES
declare -a ZHCN_DIRROOT

# don't r home.

function r () { 
    if [ -n "$1" ]; then 
        cd ${ZHCN_DIRNAMES[$1]}
        return 0
    else
        push `pwd`
        let i=1
        for line in $(realpath `tree -id -L 1` | sed '$d' | sed '$d')
        do
            echo ${i} $line
            ZHCN_DIRNAMES[${i}]=$line
            i=$[i+1]   # 正确的数字运算 not echo 1+1
        done
        echo ${#ZHCN_DIRNAMES[@]}   # length 
    fi
}


