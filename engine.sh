#! /bin/bash

basedirscript=$(cd "$(dirname "$0")"; pwd)


array_pc=(django git python byobu tmux tmuxinator markdown scbl zsh locales)

PcPluginsConfig ()
{
    for i in ${array_pc[@]}
    do
        source "$basedirscript/plugins/$i/"*.zsh
	#echo "Loding $i ..."
    done
}

PcPluginsConfig
source "$basedirscript/migrate.sh"
