" Bundles
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'simeji/winresizer'
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'mattn/emmet-vim'
Plugin 'fatih/vim-go'
Plugin 'jparise/vim-graphql'

call vundle#end()
filetype plugin indent on
set nocompatible
runtime macros/matchit.vim


" Plugin settings
" Vim JSX, allow JSX in normal files
let g:jsx_ext_required = 0

" Format and import go code on save
let g:go_fmt_command = "goimports"

" CtrlP config
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git'

" Nerdtree toggle
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.swp$']

" General setup
syntax enable
syntax on
set number
set relativenumber
set autoindent
set ruler
set hlsearch
set laststatus=2
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set nowrap
set clipboard=unnamed
set backspace=indent,eol,start
set formatoptions=cro

" Reopen at last position
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g'\"" | endif

" Pretty print JSON files
:command Jsonify execute "%!python -m json.tool"

" Make splits open more naturally
set splitbelow
set splitright

" Generic formatting
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" YAML files
autocmd BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Ruby files
autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab re=1

" Clear whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
