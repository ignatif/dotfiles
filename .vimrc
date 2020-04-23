set nocompatible " Disables compability with vi

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree' " Navigation tree, toggle on Ctrl + T
Plugin 'Shougo/deoplete.nvim' " Autocomplete
Plugin 'jiangmiao/auto-pairs' " Auto braces pairs
Plugin 'tpope/vim-surround' " In visual mode press S + symbol
Plugin 'mhinz/vim-grepper' " Search
Plugin 'tpope/vim-commentary' " Comment on gcc
Plugin 'w0rp/ale' " Eslint
Plugin 'easymotion/vim-easymotion' " Ctrl + S to find symbol on page

" Syntax
Bundle 'mxw/vim-jsx'
Bundle 'pangloss/vim-javascript'
Plugin 'jparise/vim-graphql'

" Theming
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0ng/vim-hybrid'
Plugin 'flazz/vim-colorschemes'

call vundle#end()

filetype plugin indent on
syntax on

source ~/.vim/settings/defaults.vim
source ~/.vim/settings/visual.vim
source ~/.vim/settings/plugin-settings.vim
source ~/.vim/settings/key-mappings.vim

au BufNewFile,BufReadPost *.js set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.prisma set syntax=graphql
autocmd FileType ts setlocal commentstring=//
