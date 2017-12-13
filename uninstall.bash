#!/usr/bin/env bash

ls -a ./conf_files/ | xargs -I {} -t rm $HOME/{}
