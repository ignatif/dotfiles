" NERDTree
let NERDTreeQuitOnOpen=1

" EasyMotion
let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#file#enable_buffer_path = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" ??
" matchit(navigation in XML on '%')
runtime macros/matchit.vim

" Grepper
runtime autoload/grepper.vim
let g:grepper = {}
let g:grepper.grep = { 'grepprg': 'grep -Rn --exclude-dir={node_modules,dist,build,android,ios} $* .' }

" ALE
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   '*': ['prettier'],
\   'css': ['prettier'],
\}
let g:ale_fix_on_save = 1
