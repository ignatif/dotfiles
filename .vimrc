set nocompatible
" _______________________________________________
" PLUGINS
" _______________________________________________
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"must have
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'Shougo/neocomplete.vim'

"javascript support
Bundle 'mxw/vim-jsx'
Bundle 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
 
"session support 
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

"code navigaiton
Plugin 'easymotion/vim-easymotion'

"appearance
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0ng/vim-hybrid'
Plugin 'flazz/vim-colorschemes'

"gc to comment a block in visual 
"gcc to comment a line
Plugin 'tpope/vim-commentary'

"folding
Plugin 'vim-scripts/restore_view.vim'

call vundle#end()
filetype plugin indent on
" ________________________________________________
" COMMON SETTINGS
" ________________________________________________

syntax on

"yolo
set noswapfile
set nowritebackup
set nobackup

"text wrap at 100
set textwidth=100
set colorcolumn=100
set number

set laststatus=2
set wildmenu
set history=50

set autoread "autoloads changed files
set hidden "allows to have buffers with unsaved changes

"search settings
set hlsearch "highlighting results
set gdefault "search globally by default

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab "spaces instead of tabs
set smarttab "tabs insert 'tab stop' and backspace deletes it
set shiftround "tab moves to the closest 'tab stop'
set autoindent
set smartindent

set cursorline

"get rid of useless spaces
set nojoinspaces
set list listchars=tab:»·,trail:·,nbsp:·

" same buffer in all windows
set clipboard=unnamedplus
" ________________________________________________
" PLUGINS SETTINGS !
" ________________________________________________

set viewoptions=cursor,folds,slash,unix

"eslint
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq = 1
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

"airline stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_powerline_fonts = 1

"vim sessions settings
let g:session_autosave = 'yes'
let g:session_autoload = 'no'

let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1

let NERDTreeQuitOnOpen=1

"neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" ________________________________________________
" KEY BINDINGS
" ________________________________________________

let mapleader=","

"create vsplit
noremap <leader>v <C-w>v

"swap between vertical tabs
nnoremap <C-W> <C-W><C-W>

map <C-t> :NERDTreeToggle<CR>

"easier vim mode change
nnoremap ; :
vnoremap ; :
inoremap jf <esc>

"tabs switching
nmap <C-k> :bn<CR>
nmap <C-j> :bp<CR>

"stop highlighting the search results
nmap <esc> :noh<CR>

"easymotion on ctrl+s
map <C-s> <Plug>(easymotion-bd-f)
nmap <C-s> <Plug>(easymotion-overwin-f)

"autobrackets
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()
inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" ________________________________________________
" VISUAL SETTINGS
" ________________________________________________

let g:airline_theme='tomorrow'
set background=dark
colorscheme hybrid_material

n
