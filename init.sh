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
    # pyenv
    django
    python
    pypi
    percol

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
    zhcn_complete
    )


Loading_plugins () {
    for i in ${array_pc[@]}
    do
        source "$TIP_HOME/plugins/$i/"*.zsh
    done
}


function generate_random_text(){
    temp1=`echo $RANDOM|md5sum`
    printf '%s' {1..500}_$temp1
}

function secure_delete(){
    for i in {1..10}
    do
        echo `generate_random_text` > $1
        rm $1
    done
}

# display fullpath
alias treepath='realpath `tree -if`'

Loading_plugins
source $TIP_HOME/migrate.sh
