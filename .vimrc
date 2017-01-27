set nocompatible
"
" PLUGINS
"
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"must have
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'Shougo/deoplete.nvim'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary'
Plugin 'mhinz/vim-grepper'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Architektor/vim-jsx-components' "Script from my bro
"Plugin 'tpope/vim-fugitive'

"javascript support
Bundle 'mxw/vim-jsx'
Bundle 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'

"code navigaiton
Plugin 'easymotion/vim-easymotion'

"appearance
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0ng/vim-hybrid'
Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on


"
" COMMON SETTINGS
"

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

"disable sound bells
set vb

" same buffer in all windows
" set clipboard="reattach-to-user-namespace pbcopy"
set clipboard=unnamed

" ??
set viewoptions=cursor,folds,slash,unix

"
" PLUGIN SETTINGS
"

"eslint
" let g:syntastic_check_on_open=1
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint'

"airline stuff
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_powerline_fonts = 1

let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1

let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI = 1 "Minimalistic nerd tree

"deoplete complete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#file#enable_buffer_path = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|ios\|android\'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"matchit(navigation in XML on '%')
runtime macros/matchit.vim

"grepper
runtime autoload/grepper.vim
let g:grepper.grep = { 'grepprg': 'grep -Rn --exclude-dir={node_modules,dist,build,android,ios} $* .' }

"
" KEY BINDINGS
"

let mapleader="\<Space>"
map , <leader>

"create vertical split
noremap <leader>v <C-w>v
"create horizontal split
noremap <leader>b <C-w>S
"close split
noremap <leader>x :bd<CR>

"split focus switching
nnoremap <C-W> <C-W><C-W>
" if has('nvim') "little hack: https://github.com/neovim/neovim/issues/2048
"     nmap <BS> <C-W>h
" endif
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

"grepper
nnoremap <C-G> :Grepper<CR>

"tabs switching
nmap <leader>k :bn<CR>
nmap <leader>j :bp<CR>

map <C-t> :NERDTreeToggle<CR>

"easier vim mode change
nnoremap ; :
vnoremap ; :
inoremap jf <esc>

"stop highlighting the search results
nmap <esc> :noh<CR>

"close file but not split
nmap <leader>d :b#<bar>bd#<CR>

"easymotion on ctrl+s
let g:EasyMotion_do_mapping = 0 " Disable default mappings
map <C-s> <Plug>(easymotion-bd-f)
nmap <C-s> <Plug>(easymotion-overwin-f)

"support russian keymap
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

"
" VISUAL SETTINGS
"

let g:airline_theme='hybrid'
set background=dark
colorscheme hybrid


"script from VladimirPal to find local eslint and use it if found
" function! ConfigureLocalEsLint()
"     let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
"     if matchstr(local_eslint, "^\/\\w") == ''
"         let local_eslint = getcwd() . "/" . local_eslint
"     endif
"     if executable(local_eslint)
"         let g:syntastic_javascript_eslint_exec = local_eslint
"     endif
" endfunction

" call ConfigureLocalEsLint()

" :autocmd BufEnter * call ConfigureLocalEsLint()

"abbrevs
iabbrev porpTypes propTypes
iabbrev boject object

autocmd FileType javascript set formatprg=prettier\ --stdin

let g:python_host_prog = '/usr/bin/python'
" let g:python2_host_prog = '/usr/bin/python27'
" let g:python3_host_prog = '/usr/bin/python3.5'
