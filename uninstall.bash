#!/usr/bin/env bash

ls ./conf_files/ | xargs -I {} -t rm $HOME/{}
