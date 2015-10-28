#!/bin/bash

# Should always have this but let practice good coding standards
if which pyenv > /dev/null; then
    eval "$(pyenv init -)"; 
    export PYENV_ROOT="$HOME/.pyenv/"

    # Let's set the default shell to 2.7.9
    { pyenv update > /dev/null }
    { pyenv install 2.7.9 } || {  "2.7.9 was already installed"}
    pyenv shell 2.7.9

    # Initialize virtualenv
    if which pyenv-virtualenv-init > /dev/null; then
        eval "$(pyenv virtualenv-init -)";
    fi
fi

