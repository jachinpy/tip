#!/usr/bash


export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

function fix_remote_locales () {
   locale-gen en_US.UTF-8;
   sudo dpkg-reconfigure locales
}
