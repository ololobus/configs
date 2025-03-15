#!/usr/bin/env sh

# ls -A ./conf_files/ | xargs -I {} -t rm $HOME/{}

# configs=$(ls -A ./conf_files)

# echo $configs

# rm -i -f $configs

# for f in ./conf_files/.*; do
#   rm -i $HOME/$f
# done

for f in $(ls -A ./dotfiles/common/); do
  rm -i $HOME/$f
done

for f in $(ls -A ./dotfiles/macos/); do
  rm -i $HOME/$f
done
