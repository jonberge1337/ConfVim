# Instalacion VIM 

primero borrar la carpeta /usr/share/vim/ para que luego no te haga cosas raras
y por si acaso sudo aptitude purge vim

sudo aptitude install nodejs para que funciones coc

git clone https://github.com/vim/vim  
cd vim  
sPluginnudo ./configure --enable-multibyte --enable-fontset --enable-xim --enable-gui=auto --enable-luainterp=dynamic --enable-pytnudo ./configure --enable-multibyte --enable-fontset --enable-xim --enable-gui=auto --enable-luainterp=dynamic --enable-pytudo ./configure --enable-multibyte --enable-fontset --enable-xim --enable-gui=auto --enable-luainterp=dynamic --enable-python3interp=yes --enable-rubyinterp=yes --enable-perlinterp=yes --enable-cscope  --with-x --with-compiledby=erocpil --with-features=huge  
make  
sudo make install

# Configurar VIM
### para configurar para c
:CocConfig<CR>
```json
{
 "languageserver": {
    "clangd": {
      "command": "clangd",
      "args": ["--background-index"],
      "rootPatterns": ["compile_flags.txt", "compile_commands.json", ".vim/", ".git/", ".hg/"],
      "filetypes": ["c", "cpp", "objc", "objcpp"]
    }
  }
}
```

### Lo primero instalar vim plug
`curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

[vim-plug](https://github.com/junegunn/vim-plug)

### Instalar pynvim y jedi
``` bash
$ python3 -m pip install jedi
```

### Instalar los plugins
`Abra vim y ejecute :PluginInstall (o vim +PluginInstall +qall para los amantes de la terminal)`
