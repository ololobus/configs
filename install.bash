#!/usr/bin/env bash

ls ./conf_files | xargs -I {} -t ln -s $(pwd)/conf_files/{} $HOME/{}
