#! /bin/bash

basedirscript=$(cd "$(dirname "$0")"; pwd)


array_pc=(django git python byobu tmux tmuxinator markdown scbl zsh locales)

Loading_plugins ()
{
    for i in ${array_pc[@]}
    do
        source "$basedirscript/plugins/$i/"*.zsh
	#echo "Loding $i ..."
    done
}

Loading_plugins
source "$basedirscript/migrate.sh"
