#! /bin/bash


if [ ! -n "$TIP_JACHINPY" ]; then
    TIP_JACHINPY=$HOME/utils/tip
fi


# support feature for array_pc, if you need other plugins, into array_pc.see plugins.
array_pc=(
        virtualenvwrapper
        django
        git
        pypi
        python
        byobu
        markdown
        scbl
        zsh
        locales
        vim
        360library
        node
        tmux
        tmuxinator
        )


Loading_plugins () {
    for i in ${array_pc[@]}
    do
        source "$TIP_JACHINPY/plugins/$i/"*.zsh
    done
}

Loading_plugins
source $TIP_JACHINPY/migrate.sh
