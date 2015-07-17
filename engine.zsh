#! /bin/bash


array_pc=(django git python byobu tmux tmuxinator markdown scbl zsh)

PcPluginsConfig ()
{
    for i in ${array_pc[@]}
    do
        source $HOME/project/tip/plugins/$i/*.zsh
	#echo "Loding $i ..."
    done
}

PcPluginsConfig
