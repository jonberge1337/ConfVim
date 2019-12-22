# Instalacion VIM 

primero borrar la carpeta /usr/share/vim/ para que luego no te haga cosas raras
y por si acaso sudo aptitude purge vim

sudo aptitude install nodejs para que funciones coc

sudo ./configure --enable-multibyte \
       --enable-fontset \
       --enable-xim \
       --enable-gui=auto \
       --enable-luainterp=dynamic \
       --enable-pythoninterp=yes \
       --enable-rubyinterp=dynamic \
       --enable-perlinterp \
       --enable-cscope \
       --enable-sniff \
       --with-x \
       --with-compiledby=erocpil \
       --with-features=huge
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
