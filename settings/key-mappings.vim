" Space and , are leader buttons
let mapleader="\<Space>"
map , <leader>

" Create vertical split on , + V
noremap <leader>v <C-w>v
" Create horizontal split on , + V
noremap <leader>b <C-w>S
" Close split on , + X
noremap <leader>x :bd<CR>

" Focus next split on Ctrl + W
nnoremap <C-W> <C-W><C-W>

" Navigate through splits with j(↓) / k(↑) / h(←) / l(→)
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

" Toggle Grepper on Ctrl + G
nnoremap <C-G> :Grepper<CR>

" Previous tab on <leader> + J
nmap <leader>j :bp<CR>

" Next tab on <leader> + K
nmap <leader>k :bn<CR>


" Toggle NerdTree on Ctrl + T
map <C-t> :NERDTreeToggle<CR>

" Use ';' instead of ':' to toggle command line
nnoremap ; :
vnoremap ; :

" Escape insert mode on J + F
inoremap jf <esc>

" Stop highlighting the search results on Escape
nmap <esc> :noh<CR>

" Close file but not split
nmap <leader>d :b#<bar>bd#<CR>

" Toggle Easymotion on Ctrl + S
map <C-s> <Plug>(easymotion-bd-f)
nmap <C-s> <Plug>(easymotion-overwin-f)
