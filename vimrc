"Usamos Vim, no VI
set nocompatible

" Vim-Plug!!!
call plug#begin('~/.vim/plugged')



"""""""""" Plugins """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""" Herramientas
Plug 'easymotion/vim-easymotion'
" Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/dbext.vim'
Plug 'ervandew/supertab'
Plug 'dense-analysis/ale'
Plug 'SirVer/ultisnips'
Plug 'alcesleo/vim-uppercase-sql'
Plug 'honza/vim-snippets'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
" Plug 'davidhalter/jedi-vim'
Plug 'deoplete-plugins/deoplete-jedi'

"""""""""""""""""""""""""" Esquema de colores
Plug 'chriskempson/base16-vim'
Plug 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plug 'flazz/vim-colorschemes'
Plug 'vim-python/python-syntax'

"""""""""""""""""""""""""" Juegos vim
Plug 'johngrib/vim-game-code-break'
Plug 'johngrib/vim-game-snake'

call plug#end()
"""""""""""" Fin de config de Vundle y requerimientos de plugins """"""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"soporte de 256 colores en vim
set t_Co=256

"Color del fondo oscuro
set background=dark


"activacion resaltado de sintaxys
syntax on
"""""""""""""""""""""""""""""""""""" Visual """""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Esquema de colores
"let g:jellybeans_use_term_background_color = 0  "solo para jellybeans
"let g:jellybeans_use_term_italics = 1
colorscheme gruvbox

"enumerar las lineas
set number

"Muestra la linea de status
"teniendo Vim-Airline muestra la generada po dicho plugin
set laststatus=2

set showcmd "Muestra comandos incompletos en esquina inferior derecha

"Esconde el modo actual ya que Vim-Airline tambien lo muestra.
set noshowmode

"Resalta la linea donde esta el cursorline"
set cursorline

set colorcolumn=80 "marca el ancho maximo que deberia tener una linea

set nowrap "NO corta las lineas largas para evitar scroll horizontal

set showbreak=↪ "marca para indicar un quiebre de lineas largas

" set list "muestra tabulaciones, fin de linea, espacios, etc.
" set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:⋅,nbsp:.

set wildmode=list:longest,list:full "mostrar opciones de completado de comandos
set wildmenu "lista seleccionable de autocompletado de comandos.

"resaltado de syntaxys sincronizado desde el inicio
augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync fromstart
augroup END
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""" backups """"""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noswapfile "desactiva los archivos Swap
set nobackup   "no se crean respaldos permanentes cuando se guarda un archivo
set nowritebackup "no se crean respaldos temporales al guardar archivos
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""" Identacion """""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"sangrado con espacios y no con tabulacion.
set expandtab

"la tecla TAB inserta 4 espacios de sangrado
set softtabstop=4

"sangrado automatico al saltar la linea de 4 espacios
set shiftwidth=4
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"#############################################################################"
"""""""""""""""""""""" Config varias """"""""""""""""""""""""""""""""""""""""""
"" busquedas
set ignorecase "busquedas no distinguen mayusculas y minusculas
set incsearch   "Muestra la concordancia de una busqueda mientras escribes.
set hlsearch    "Resalta las busquedas

"""""""""""""""""""""""""""" Codificacion """""""""""""""""""""""""""""""""""""
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"##############################################################################"


" para que nos salgan los buffer arriba
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:python_highlight_all = 1
"#############################################################################"
"""""""""""""""""""""" Prueba supertab """"""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"  
let g:UltiSnipsJumpBackwardTrigger="<S-tab>" 
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
"#############################################################################"
"""""""""""""""""""""" Prueba ale """"""""""""""""""""""""""""""""""""""""""
let g:ale_sign_error = '◉'
let g:ale_sign_warning = '◉'
highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#F5F5F5
highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#ED6237 guibg=#F5F5F5
let g:ale_warn_about_trailing_whitespace = 0
let g:ale_maximum_file_size = 1024 * 1024
let g:ale_completion_enabled = 1
let g:ale_code_actions_enabled = 1
let g:ale_set_balloons_legacy_echo = 1
let g:ale_c_parse_compile_commands = 1

" Options for different linters.
let g:ale_python_mypy_ignore_invalid_syntax = 1
let g:ale_python_mypy_options = '--incremental'
let g:ale_typescript_tslint_ignore_empty_files = 1
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let b:ale_linters = ['flake8', 'pylint']
let g:deoplete#enable_at_startup = 1
