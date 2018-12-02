#!/usr/bin/env bash

# ls -A ./conf_files/ | xargs -I {} -t rm $HOME/{}

# configs=$(ls -A ./conf_files)

# echo $configs

# rm -i -f $configs

# for f in ./conf_files/.*; do
#   rm -i $HOME/$f
# done

for f in $(ls -A ./conf_files/); do
  rm -i $HOME/$f
done
