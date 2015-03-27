#! /bin/bash


array_pc=(django bash git python)

PcPluginsConfig ()
{
    for i in ${array_pc[@]}
    do
        source $HOME/project/tip/plugins/$i/*.sh
    done
}

PcPluginsConfig
