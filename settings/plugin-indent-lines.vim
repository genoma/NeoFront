" ============ IndentLines ============
" <leader>ig is toggle
" <leader>ie is enable
" <leader>ig is disable

let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0

hi IndentGuidesOdd  ctermbg=237
hi IndentGuidesEven ctermbg=239

let g:indent_guides_exclude_filetypes = ['nerdtree']
