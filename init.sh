#! /bin/bash


if [ ! -n "$TIP_HOME" ]; then
    TIP_HOME=$HOME/utils/tip
fi


# support feature for array_pc, if you need other plugins, into array_pc.see plugins.
array_pc=(
    git
	zsh
    vim

    virtualenvwrapper
    pyenv
    django
    python
    pypi

    markdown
    byobu
    scbl
    #locales
    360library
    node
    tmux
    tmuxinator
    #pandoc
    #nvm
    )


Loading_plugins () {
    for i in ${array_pc[@]}
    do
        source "$TIP_HOME/plugins/$i/"*.zsh
    done
}

Loading_plugins
source $TIP_HOME/migrate.sh
