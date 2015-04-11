# Mi Configuracion Vim + Vundle

## Instalacion: simplemente clona el repositorio

```bash
$ git clone https://github.com/jesusangelm/ConfVim.git ~/.vim
```

**Crea los enlaces simbolicos (symlinks) al .vimrc :**

```bash
$ ln -s ~/.vim/vimrc ~/.vimrc
$ ln -s ~/.vim/vimrc ~/.gvimrc
```

**Instala Vundle**

```bash
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

**Instala los plugins:**

Abra `vim` y ejecute `:PluginInstall`  (o `vim +PluginInstall +qall` para los amantes de la terminal)

**Fuentes parchadas para Powerline**

Clone el repositorio de fuentes para Powerline.
```bash
git clone https://github.com/Lokaltog/powerline-fonts.git
```
e instale sus fuentes favoritas

# Plugins incluidos:

  * 'fatih/vim-go'
  * 'tpope/vim-haml'
  * 'tpope/vim-markdown'
  * 'KohPoll/vim-less'
  * 'slim-template/vim-slim'
  * 'mustache/vim-mustache-handlebars'
  * 'jelera/vim-javascript-syntax'
  * 'kchmck/vim-coffee-script'
  * 'tpope/vim-rails'
  * 'tpope/vim-rake'
  * 'vim-ruby/vim-ruby'
  * 'MarcWeber/vim-addon-mw-utils'
  * 'tomtom/tlib_vim'
  * 'garbas/vim-snipmate'
  * 'honza/vim-snippets'
  * 'bling/vim-airline'
  * 'airblade/vim-gitgutter'
  * 'scrooloose/syntastic'
  * 'ctrlpvim/ctrlp.vim'
  * 'scrooloose/nerdcommenter'
  * 'tpope/vim-endwise'
  * 'Raimondi/delimitMate'
  * 'tpope/vim-fugitive'
  * 'scrooloose/nerdtree'
  * 'godlygeek/tabular'
  * 'tpope/vim-surround'
  * 'majutsushi/tagbar'
  * 'ap/vim-css-color'

# Colorscheme: instalados como plugins.

  * 'nanotech/jellybeans.vim'
  * 'tomasr/molokai'
  * 'altercation/vim-colors-solarized'
  * 'chriskempson/vim-tomorrow-theme'
  * 'w0ng/vim-hybrid' 


# Mapeos de teclas:

 * `<leader>` esta mapeado a la tecla "," (coma).
 * Presiona `F2` resalta el archivo actual en el arbol de NERDTree.
 * Presiona `F3` para mostrar/esconder NERDTree.
 * Presiona `F7` para identar automaticamente todo el contenido del buffer.
 * Presiona `<space>` (Barra Espaciadora) para eliminar busquedas resaltada.
 * Pesiona `<leader>h` para dividir el buffer horizontalmente
 * Pesiona `<leader>v` para dividir el buffer verticalmente
 * Pesiona `<leader>c` para cerrar un buffer
 * Presiona `<leader>z` o `<leader>x` para navegar entre los buffers
 * `<leader> cc` Para comentar la linea actual o una seleccion de lineas.
 * `<leader> cu` Para descomentar la linea actual o una seleccion de lineas

**Mapeos para Fugitive**

* Presiona `<leader>gs` para un `git status`
* Presiona `<leader>gd` para un `git diff`
* Presiona `<leader>gc` para un `git commmit`
* Presiona `<leader>gb` para un `git blame`
* Presiona `<leader>gsh` para un `git push`
* Presiona `<leader>gll` para un `git pull`
