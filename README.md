### Install

```shell
ls -a ./conf_files | xargs -I {} -t ln -s $(pwd)/conf_files/{} $HOME/{}
```


### Uninstall

```shell
ls -a ./conf_files/ | xargs -I {} -t rm -i $HOME/{}
```
