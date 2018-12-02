#!/usr/bin/env bash

ls -A ./conf_files | xargs -I {} -t ln -s $(pwd)/conf_files/{} $HOME/{}
