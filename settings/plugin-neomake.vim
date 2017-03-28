" ============ NeoMake ============

" Run Neomake at save and when reading a file
if has("autocmd")
  au bufwritepost * Neomake
  au bufread * Neomake
endif

let g:neomake_scss_enabled_makers = ['stylelint']
let g:neomake_javascript_enabled_makers = ['eslint']
