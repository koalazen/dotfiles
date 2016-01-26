"-------------------------------------------------------------------------------
" PLUGINS

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Lokaltog/vim-easymotion'
Plugin 'Raimondi/delimitMate'
Plugin 'SirVer/ultisnips'
Plugin 'a.vim'
Plugin 'bling/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'd11wtq/ctrlp_bdelete.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'gmarik/Vundle.vim'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'google/vim-maktaba'
Plugin 'honza/vim-snippets'
Plugin 'kien/ctrlp.vim'
Plugin 'rbgrouleff/bclose.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-scripts/Rename'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'zah/nimrod.vim'

call vundle#end()
filetype plugin indent on
" To ignore plugin indent changes, instead use:
"filetype plugin on

call glaive#Install()

Glaive codefmt clang_format_style='Google'

if filereadable($HOME . "/.vimrc.ggl")
  source ~/.vimrc.ggl
endif

"-------------------------------------------------------------------------------
" CONFIG

syntax on
set t_Co=256
colorscheme solarized
set bg=dark

" CtrlP
let g:ctrlp_cmd = 'CtrlPBuffer'
call ctrlp_bdelete#init()
autocmd CompleteDone * pclose

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Ycm
set completeopt-=preview

set autochdir
set splitbelow
set splitright
let mapleader=","
let g:auto_save=1
let delimitMate_expand_cr=1
set number
set tabstop=2 shiftwidth=2 smarttab expandtab
set laststatus=2
" Pasting from clipboard in tmux
set clipboard=unnamed
map ; :
nnoremap <c-f> :FormatCode<CR>
vnoremap <c-f> :FormatLines<CR>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
nnoremap <leader>sl vip:sort<cr>
nnoremap tt :tabnew<cr>
nnoremap tn :tabnext<cr>
nnoremap tp :tabprevious<cr>
nnoremap td :tabclose<cr>
nnoremap <leader>e :Explore<cr>
nnoremap <leader>d :Bclose<cr>
