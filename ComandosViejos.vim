"""""""""""""""""""""""""""""" Identacion """""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"sangrado con espacios y no con tabulacion.
set expandtab

"la tecla TAB inserta 4 espacios de sangrado
set softtabstop=4

"sangrado automatico al saltar la linea de 4 espacios
set shiftwidth=4
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""" Codificacion """""""""""""""""""""""""""""""""""""
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


set guicursor= "Cursor siempre igual

"Cursor diferent en modo insert
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
\ if v:insertmode == 'i' |
\   silent execute '!echo -ne "\e[6 q"' | redraw! |
\ elseif v:insertmode == 'r' |
\   silent execute '!echo -ne "\e[4 q"' | redraw! |
\ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif
"""""""""""""""""" es para lo mismo  pero se comportan de distinta manera
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
