set nocompatible

call plug#begin('~/.vim/plugged')

"""""""""" Plugins """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""" Herramientas
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/dbext.vim'
Plug 'tpope/vim-dadbod'
Plug 'ervandew/supertab'
Plug 'dense-analysis/ale', { 'on':  'ALEToggle' } 
" Plug 'SirVer/ultisnips'
Plug 'alcesleo/vim-uppercase-sql'
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'Yggdroot/indentLine'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'jceb/vim-orgmode'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'aklt/plantuml-syntax'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dbeniamine/cheat.sh-vim'

"""""""""""""""""""""""""" Esquema de colores
Plug 'flazz/vim-colorschemes'

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

colorscheme gruvbox

"enumerar las lineas
set number

"Muestra la linea de status
"teniendo Vim-Airline muestra la generada po dicho plugin
set laststatus=2

"que no tarde al darle escape
set ttimeoutlen=0
" a la espera de otros comandos 1000 milisegundos
set timeoutlen=1000

set showcmd "Muestra comandos incompletos en esquina inferior derecha

"Esconde el modo actual ya que Vim-Airline tambien lo muestra.
set noshowmode

"Para que puedas borrar normal
set backspace=indent,eol,start

"Resalta la linea donde esta el cursorline"
set cursorline

set colorcolumn=80 "marca el ancho maximo que deberia tener una linea

set nowrap "NO corta las lineas largas para evitar scroll horizontal

set showbreak=↪ "marca para indicar un quiebre de lineas largas

" para ver las opciones posibles aunqe en vim todabia no aparecen como neovim
set wildmenu

" set guicursor= "Cursor siempre igual

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

"==================== airline ====================
" Para mostrar el buffer abierto arriba
let g:airline#extensions#tabline#enabled = 1

"==================== xml ====================
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
let g:closetag_filetypes = 'xml,html,xhtml'

"==================== SuperTab ====================
let g:SuperTabDefaultCompletionType = "<c-n>"

"==================== EasyMotion ====================
let g:EasyMotion_leader_key = ',,'
