call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
Plug 'ThePrimeagen/vim-be-good'
call plug#end()

:set number
:set rnu
:set encoding=UTF-8
:colorscheme gruvbox
:set termguicolors
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set conceallevel=1

let g:indentLine_char_list = ['|', '¦', '┆', '┊']

nnoremap <C-e> <C-y>
nnoremap <C-o> <C-e>
nnoremap <C-n> :tabnew<CR>
nnoremap <C-h> :tabp<CR>
nnoremap <C-l> :tabn<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>
:imap ii <Esc>

let mapleader = "."
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>y :q<CR>
nnoremap <Leader>s :w<CR>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

let g:lightline = {
            \ 'active':{
                \'left':[['mode', 'paste'],[],['relativepath','modified']],
                \'right':[['filetype','percent', 'lineinfo']]
            \ }
      \ }
