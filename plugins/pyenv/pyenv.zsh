#!/bin/bash

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYTHON_BUILD_MIRROR_URL="http://pyenv.qiniudn.com/pythons/"

eval "$(pyenv init --path)"

