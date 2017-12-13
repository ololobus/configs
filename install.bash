#!/usr/bin/env bash

ls -a ./conf_files | xargs -I {} -t ln -s $(pwd)/conf_files/{} $HOME/{}
