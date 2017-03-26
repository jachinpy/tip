#! /bin/bash


if [ ! -n "$TIP_JACHINPY" ]; then
    TIP_JACHINPY=$HOME/utils/tip
fi


array_pc=(virtualenvwrapper django git python byobu tmux tmuxinator markdown scbl
          zsh locales vim 360library node pypi)


Loading_plugins () {
    for i in ${array_pc[@]}
    do
        source "$TIP_JACHINPY/plugins/$i/"*.zsh
    done
}

Loading_plugins
source $TIP_JACHINPY/migrate.sh
