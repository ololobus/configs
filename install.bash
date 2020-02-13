#!/usr/bin/env bash

ls -A ./dotfiles/common | xargs -I {} -t ln -s $(pwd)/dotfiles/common/{} $HOME/{}

if test "$(uname -s)" = "Darwin"
then
    ls -A ./dotfiles/macos | xargs -I {} -t ln -s $(pwd)/dotfiles/macos/{} $HOME/{}
fi
