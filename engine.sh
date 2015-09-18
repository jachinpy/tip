#! /bin/bash


array_pc=(django git python byobu tmux tmuxinator markdown scbl zsh locales)

PcPluginsConfig ()
{
    for i in ${array_pc[@]}
    do
        source $HOME/utils/tip/plugins/$i/*.zsh
	#echo "Loding $i ..."
    done
}

PcPluginsConfig
