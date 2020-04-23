"yolo
set noswapfile
set nowritebackup
set nobackup

"text wrap at 80
set textwidth=80
set colorcolumn=80
set number "Dunno what's that"

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
