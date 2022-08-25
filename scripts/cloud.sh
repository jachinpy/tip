#!/bin/bash
# curl download or upload dav files.
# current compress: zip
# linux: 
#      mkdir ~/bin/
#      cp /tip-path/tools/cloud.sh ~/bin/
# windows needs: git-bash zip unzip, or other unix-like.
set -ue


readonly TIP_DAV_UESR=
readonly TIP_DAV_PASSWORD=

# default format: "/PATH/notes", or change source code.
TIP_DAV_LOCAL_DATA_DIR=/PATH/notes

# 上传下载指定仓库
TIP_DAV_TEMP_DIR=

TIP_DAV_REMOTE_URL=

TIP_UPLOADS=



download_file(){
    mkdir -p $TIP_DAV_TEMP_DIR
    curl -k -u $TIP_DAV_UESR:$TIP_DAV_PASSWORD  $TIP_DAV_REMOTE_URL/$1 --output $TIP_DAV_TEMP_DIR/$1
    echo '下载完成'
}

upload_file() {
    mkdir -p $TIP_UPLOADS
    curl -k -u $TIP_DAV_UESR:$TIP_DAV_PASSWORD  $TIP_DAV_REMOTE_URL/$1 -T $TIP_UPLOADS/$1
}


npull(){
    local current_pwd=$pwd
    local time=$(date "+%Y%m%d-%H%M%S")
    download_file notes-latest.zip

    # backup old files into temp notes{date}.zip.
    cp -r $TIP_DAV_LOCAL_DATA_DIR $TIP_DAV_TEMP_DIR/notes-$time
    cd $TIP_DAV_TEMP_DIR
    zip -r notes-$time.zip notes-$time/
    rm $TIP_DAV_TEMP_DIR/notes-$time -rf

    # extract not overwrite
    unzip -n -d $TIP_DAV_LOCAL_DATA_DIR $TIP_DAV_TEMP_DIR/notes-latest.zip
    cd $pwd
}


npush() {
    # uploads
    local current_pwd=$pwd
    set +e
    rm -r $TIP_DAV_TEMP_DIR/notes/
    set -e
    mkdir -p $TIP_UPLOADS
    cp -r $TIP_DAV_LOCAL_DATA_DIR $TIP_UPLOADS
    cd $TIP_UPLOADS
    zip -r notes-latest.zip notes
    upload_file notes-latest.zip
    rm $TIP_UPLOADS/notes -rf
    cd $pwd
}
set +ue
