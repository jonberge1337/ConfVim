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
 * vim-addons-mw-utils
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
 * snipmate
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
 * snippets
 * CSApprox
 * vim-airline
 * easybuffer.vim


# Colorscheme: instalados como plugins.

 * badwolf
 * jellybeans
 * molokai
 * railscasts
 * solarized
 * tomorrow
 * hybrid


# Mapeos de teclas:

 * `<leader>` esta mapeado a la tecla "," (coma).
 * Presiona `F2` para activar NERDTree.
 * Presiona `F3` para entrar/salir del modo pegar.
 * Presiona `F7` para identar automaticamente todo el contenido del buffer.
 * Presiona `<leader>v` para abrir un tab con tu .vimrc para rapida edicion.
 * Presiona `<space>` (Barra Espaciadora) para eliminar busquedas resaltada.
 * Presiona `w!!` para guardar cambios que requieren de SUDO y lo olvidaste.

**Mapeos para Fugitive**

* Presiona `<leader>gs` para un `git status`
* Presiona `<leader>gd` para un `git diff`
* Presiona `<leader>gc` para un `git commmit`
* Presiona `<leader>gb` para un `git blame`
* Presiona `<leader>gl` para un `git log`
* Presiona `<leader>gp` para un `git push`

