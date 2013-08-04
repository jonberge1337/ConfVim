# Mi Configuracion Vim

## Instalacion: simplemente clona el repositorio

```bash
$ git clone git@bitbucket.org:jesusangelm/confvim.git ~/.vim
```

**Crea los enlaces simbolicos (symlinks) a los .vimrc y .gvimrc:**

```bash
$ ln -s ~/.vim/vimrc ~/.vimrc
$ ln -s ~/.vim/vimrc ~/.gvimrc
```

**Instala los plugins:**

Abra `vim` y ejecute `:BundleInstall`  (o `vim +BundleInstall +qall` para los amantes de la terminal)

**Fuentes parchadas para Powerline**

Clone el repositorio de fuentes para Powerline.
```bash
git clone https://github.com/Lokaltog/powerline-fonts.git
```

# Plugins incluidos:

 * ACK
 * vim-bundler
 * coffee-script
 * css-color
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
 * snipmate-snippets
 * surround
 * syntastic
 * tabular
 * vim-rails
 * vim-rake
 * vim-ruby


# Colorscheme: instalados como plugins.

 * badwolf
 * molokai
 * jellybeans
 * railscasts
 * solarized


# Mapeos de teclas:

 * Presiona `F2` para activar NERDTree.
 * Presiona `F3` para entrar/salir del modo pegar.
 * Presiona `F7` para identar automaticamente todo el contenido del buffer.
 * Presiona `<leader>v` para abrir un tab con tu .vimrc para rapida edicion.
 * Presiona `<space>` (Barra Espaciadora) para eliminar busquedas resaltada.

