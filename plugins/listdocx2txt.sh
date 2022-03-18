#!/bin/bash

function listdocx2txt () {
for file in `ls $1`
do
    if [ -d $1"/"$file ]
    then
        listdocx2txt $1"/"$file
    else
        if [ ${file##*.} == "docx" ]
        then
            echo $1"/"$file
            docx2txt $1"/"$file
        fi
    fi
done
}

listdocx2txt $1
echo "处理完毕!"
