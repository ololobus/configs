### Install

```shell
ls ./conf_files | xargs -I {} -t ln -s $(pwd)/conf_files/{} $HOME/{}
```


### Uninstall

```shell
ls ./conf_files/ | xargs -I {} -t rm $HOME/{}
```


### TODO

Why shell scripts don't work? But commands as is work.
