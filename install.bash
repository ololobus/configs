#!/usr/bin/env bash

ls -A ./dotfiles/common | xargs -I {} -t ln -s $(pwd)/dotfiles/common/{} $HOME/{}
