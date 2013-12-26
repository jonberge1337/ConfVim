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
$ git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

**Instala los plugins:**

Abra `vim` y ejecute `:BundleInstall`  (o `vim +BundleInstall +qall` para los amantes de la terminal)

**Fuentes parchadas para Powerline**

Clone el repositorio de fuentes para Powerline.
```bash
git clone https://github.com/Lokaltog/powerline-fonts.git
```
e instale sus fuentes favoritas

# Plugins incluidos:

 * ACK
 * vim-bundler
 * coffee-script
 * css-color
 * color-picker
 * ctrlp
 * cucumber
 * delimitMate
 * easymotion
 * endwise
 * figitive
 * haml
 * markdown
 * neocomplcache
 * nerdtree
 * nginx
 * powerline
 * snipmate
 * snippets
 * surround
 * syntastic
 * tabular
 * tlib
 * vim-elixir
 * vim-less
 * vim-rails
 * vim-rake
 * vim-ruby
 * vim-slim
 * CSApprox


# Colorscheme: instalados como plugins.

 * badwolf
 * molokai
 * jellybeans
 * railscasts
 * solarized
 * tomorrow
 * hybrid


# Mapeos de teclas:

 * Presiona `F2` para activar NERDTree.
 * Presiona `F3` para entrar/salir del modo pegar.
 * Presiona `F7` para identar automaticamente todo el contenido del buffer.
 * Presiona `<leader>v` para abrir un tab con tu .vimrc para rapida edicion.
 * Presiona `<space>` (Barra Espaciadora) para eliminar busquedas resaltada.

