# Instalacion VIM en debian instalar vim-nox para evitar problemas compatibilidad con python

# Configurar VIM

### Lo primero instalar vim plug
`curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

[vim-plug](https://github.com/junegunn/vim-plug)

### Instalar pynvim y jedi
``` bash
$ python3 -m pip install jedi
$ python3 -m pip install pynvim
```

### Instalar los plugins
`Abra vim y ejecute :PluginInstall (o vim +PluginInstall +qall para los amantes de la terminal)`
