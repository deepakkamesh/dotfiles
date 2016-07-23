set nocompatible
filetype off

call plug#begin()
Plug 'fatih/vim-go'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/molokai'
call plug#end()

" Color Scheme
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai

" Syntax highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_array_whitespace_error = 1

" go fmt settings
let g:go_fmt_fail_silently = 0
let g:go_fmt_command = "goimports"
" Additional highlights
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1

" Current leader key \
let mapleader = ","

nmap <C-g> :GoDecls<cr>
imap <C-g> <esc>:<C-u>GoDecls<cr>

" Command Mappings
au FileType go nmap <Leader>s <Plug>(go-def-split)
au FileType go nmap <Leader>v <Plug>(go-def-vertical)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>l <Plug>(go-metalinter)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <Leader>d <Plug>(go-doc)
au FileType go nmap <Leader>c <Plug>(go-coverage)

" Fast saving
nnoremap <leader>w :w!<cr>


" Autosave on build.
set autowrite

" Better split switching
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <C-n> :cn<CR>
map <C-m> :cp<CR>
nnoremap <leader>a :cclose<CR>

set nocompatible
syntax on
filetype on
set number
set nowrap
set showcmd                  " Show me what I'm typing
set showmode                 " Show current mode.
map <S-Tab> :bn <CR>
match ErrorMsg '\s\+$'
set tabstop=2
" set expandtab

" My Vim Shortcuts
" C + ] or gd - Go to definition
" C + t - Go back to previous location.
" C + g - GoDecls
" % - move to the matching bracket
" y,d i {,( - yank or delete inside
" C + p - show list of files on disk in directory 

