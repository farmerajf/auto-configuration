syntax on
colo pablo

set cursorline
set number
set relativenumber

set tabstop=4
set shiftwidth=4
set expandtab

filetype plugin indent on
set backspace=indent,eol,start

let g:go_fmt_command = "goimports"
" Run goimports along gofmt on each save
let g:go_auto_type_info = 1
" Automatically get signature/type info for object under cursor

