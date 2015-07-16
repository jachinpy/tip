#! /bin/bash


array_pc=(django git python byobu tmux tmuxinator markdown scbl)

PcPluginsConfig ()
{
    for i in ${array_pc[@]}
    do
        source $HOME/project/tip/plugins/$i/*.zsh
    done
}

PcPluginsConfig
