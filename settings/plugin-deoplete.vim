" ============ DEOPLETE ============
" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Use smartcase.
let g:deoplete#enable_smart_case = 1

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"

" <tab>: autocomplete and chose completion.
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
