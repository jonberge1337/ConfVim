"Usamos Vim, no VI
set nocompatible

"Vundle!!!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Vundle administra Vundle!!! WTF!
Bundle 'gmarik/vundle'

"Plugins
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'Shougo/neocomplete.vim'
Bundle 'Shougo/neosnippet.vim'
Bundle 'Shougo/neosnippet-snippets'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'godlygeek/tabular'
Bundle 'tomtom/tlib_vim'
Bundle 'elixir-lang/vim-elixir'
Bundle 'KohPoll/vim-less'
Bundle 'vim-ruby/vim-ruby'
Bundle 'slim-template/vim-slim'
Bundle 'honza/vim-snippets'
Bundle 'vim-scripts/CSApprox'
Bundle 'bling/vim-airline'
Bundle 'garbas/vim-snipmate'
Bundle 'mileszs/ack.vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'kchmck/vim-coffee-script'
Bundle 'ap/vim-css-color'
Bundle 'kien/ctrlp.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'rking/ag.vim'
Bundle 'majutsushi/tagbar'

"Esquema de colores
Bundle 'nanotech/jellybeans.vim'
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'w0ng/vim-hybrid'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""

"soporte de 256 colores en la terminal
set t_Co=256

"Color del fondo
set background=dark

"Esquema de colores
colorscheme jellybeans

"permitir la tecla retroceso en modo insertar para eliminar.
set backspace=indent,eol,start

set noswapfile "desactiva los archivos Swap
set nobackup   "no se crean respaldos permanentes cuando se guarda un archivo
set nowritebackup "no se crean respaldos temporales al guardar archivos

"Desactiva la deteccion de tipo de archivo, por extencio o contenido.
filetype off "requerido por Vundle!!!
"Activa la deteccion de tipo de archivo desactivada arriba, las extensiones
"de tipo de archivos y las indentaciones de tipos de archivos.
filetype plugin indent on "requerido por Vundle!!!

"activacion resaltado de sintaxys
syntax on

"soporte de raton
set mouse=a
set ttymouse=xterm2

"hide buffers when not displayed
set hidden

"historial de comandos en la linea de comandos
set history=100

"muchos historial de deshacer
set undolevels=1000

set showcmd     "Muestra comandos incompletos en esquina inferior derecha
set showmode    "Muestra el modo actual

set number      "enumerar las lineas

set ignorecase "busquedas no distinguen mayusculas y minusculas
set incsearch   "Muestra la concordancia de una busqueda mientras escribes.
set hlsearch    "Resalta las busquedas

set visualbell "Desactiva el maldito beep!
set nowrap        "NO corta las lineas largas para evitar scroll horizontal
set showbreak=↪ "marca para indicar un quiebre de lineas largas
set list "muestra tabulaciones, fin de linea, espacios, etc.
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:⋅,nbsp:.
set colorcolumn=80 "marca el ancho maximo que deberia tener una linea
set textwidth=80

"""""   configs de identacion   
"sangrado con espacios y no con tabulacion.
set expandtab
set smarttab
"sangrado de linea de 2 espacios
set shiftwidth=2
"TAB inserta 2 espacios de sangrado
set softtabstop=2
set tabstop=4
"autoidenta las lineas. Si escribes una linea con sangria, al dar ENTER o
"la tecla O para crear una nueva linea, esta linea tendra la misma sangria
"que la linea anterior.
set autoindent

"shell
set shell=/bin/zsh

"Resalta la linea donde esta el cursorline"
set cursorline

"Codificacion"
set encoding=utf8
set fileencoding=utf8
scriptencoding utf-8

" Fuente preferida"
"set guifont=Bitstream\ Vera\ Sans\ Mono\ h:10"
set guifont=Inconsolata\ Medium\ 12
"   ^^^ Fuente parchada para compatibilidad con Powerline 

"Muestra la linea de status
set laststatus=2

"cursor mas alla del ultimo caracter en modo normal
set virtualedit=onemore

set wildmode=list:longest,full "mostrar opciones de completado de comandos
set wildmenu "lista seleccionable de autocompletado de comandos.

"Configs especiales para para Gvim
if has('gui_running')
  set lines=40  "Abre Gvim con 40 lineas de alto
  set guioptions-=T "Elimina la barra de herramientas en Gvim
endif

"Permite usar w!!  para aquellos archivos que requieren sudo y lo olvidas
cmap w!! w !sudo tee % >/dev/null

"Cambia el directorio a la ventana actual
set autochdir

" folding
set foldcolumn=4 " columns for folding
set foldmethod=indent
set foldlevel=9
set nofoldenable "dont fold by default "

"Vim regresa a la misma linea cuando reabres un archivo
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \ execute 'normal! g`"zvzz' |
        \ endif
augroup END

"""""""""CONFIGS DE PLUGINS""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""

"NERDtree
let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40
let NERDTreeChDirMode = 2
"F2 activa NERDTree
nnoremap <f2> :NERDTreeToggle .<cr>
" ,p resalta el archivo actual en el arbol.
nmap <leader>p :NERDTreeFind<CR>


"Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_check_on_wq=0
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'


"Vim-Ruby
let g:rubycomplete_classes_in_global = 1


"Neocomplete
"let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
let g:neocomplete#force_overwrite_completefunc = 1


"Config para Vim-Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set noshowmode
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif
"Theme para airline
let g:airline_theme="powerlineish"


"Config para CtrlP
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_custom_ignore = {
      \ 'dir': '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\',
      \ }


"Fugitive
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>


"Tabularize
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:<CR>
  vmap <Leader>a: :Tabularize /:<CR>
  nmap <Leader>a:: :Tabularize /:\zs<CR>
  vmap <Leader>a:: :Tabularize /:\zs<CR>
  nmap <Leader>a, :Tabularize /,<CR>
  vmap <Leader>a, :Tabularize /,<CR>
  nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
  vmap <Leader>a<Bar> :Tabularize /<Bar><CR>

  " The following function automatically aligns when typing a
  " supported character
  inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

  function! s:align()
    let p = '^\s*|\s.*\s|\s*$'
    if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
      let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
      let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
      Tabularize/|/l1
      normal! 0
      call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
  endfunction

endif


"Tagbar
nmap <F8> :TagbarToggle<CR>

""""""""""""""""Fin Configs de Plugins"""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""MAPEOS DE TECLAS""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Mapea <leader> a la tecla ,  (coma)
let mapleader=","

"Cortar, Copiar y Pegar con las teclas ,d ,y y ,p
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P


"Presiona F3 para entrar/salir al modo pegar mientras editas un archivo
set pastetoggle=<F3>


"Leader+v abre en un tab el vimrc para editar
nmap <leader>v :tabnew $MYVIMRC<CR>


"arregla identacion presionando la tecla F7
map <F7> mzgg=G`z<CR>


"presiona espacio para borrar la busqueda resaltada
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>


"""""""""Fin Mapeos de Teclas""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

