" ============ NerdTree ============

" NERDTree settings
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map - :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1
let g:NERDTreeWinSize = 40
