#!/bin/bash
# filename: pypi.zsh
# jachinpy
# 2017.03.23

base_pypi_source_url=$(cd "$(dirname "$0")"; pwd)


set_douban_pypi () {
    if [ ! -d $HOME/.pip ]; then
        mkdir -p $HOME/.pip
    fi
    cp "$base_pypi_source_url/douban.conf" ~/.pip/pip.conf;
}

set_edu_pypi () {
    if [ ! -d $HOME/.pip ]; then
        mkdir -p $HOME/.pip
    fi
    cp "$base_pypi_source_url/edu.conf" ~/.pip/pip.conf;
}

set_lo_pypi () {
    if [ ! -d $HOME/.pip ]; then
        mkdir -p $HOME/.pip
    fi
    cp "$base_pypi_source_url/lo.conf" ~/.pip/pip.conf;
}
