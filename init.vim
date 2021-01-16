syntax on
filetype plugin indent on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set nocompatible              " required

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:rking/ag.vim.git'
Plug 'git@github.com:moll/vim-node.git'
Plug 'morhetz/gruvbox'
Plug 'fatih/vim-go'
Plug 'vim-utils/vim-man'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'git@github.com:ackyshake/VimCompletesMe.git'
" Plug 'git@github.com:ycm-core/YouCompleteMe.git'
" Plug 'townk/vim-autoclose'
Plug 'jremmen/vim-ripgrep'
Plug 'mbbill/undotree'

" Google Stack Overflow app
Plug 'MilesCranmer/gso'

" Haskell
Plug 'git@github.com:neovimhaskell/haskell-vim.git'
Plug 'git@github.com:mpickering/hlint-refactor-vim.git'
Plug 'git@github.com:dense-analysis/ale.git'
"Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'alx741/vim-hindent' " Optional

call plug#end()            " required

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netwr_browse_split = 2
let g:netrw_banner = 0
let g:netwr_winsize = 25
let g:ctrlp_use_caching = 0
let g:deoplete#enable_at_startup = 1

" haskell
let g:haskell_classic_highlighting = 1
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2
let g:haskell_indent_case_alternative = 1
let g:cabal_indent_section = 2
let g:syntastic_auto_loc_list=1

au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsInfo<CR>
au FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsClear<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 50<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" moving cursor in INSERT mode

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"YCM
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>

" splits with :sp and :vs
set splitbelow
set splitright

" set UTF8 support
set encoding=utf-8

" share clipboard
set clipboard=unnamed

" syntastic shell
set shell=/bin/bash

