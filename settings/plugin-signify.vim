" ============ Signify ============

let g:signify_vcs_list              = [ 'git', 'hg' ]

nmap <leader>gt <silent>:SignifyToggle<CR>
nmap <leader>gh <silent>:SignifyToggleHighlight<CR>
nmap <leader>gr <silent>:SignifyRefresh<CR>
nmap <leader>gd <silent>:SignifyDebug<CR>

" hunk jumping
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)

" hunk text object
omap ic <plug>(signify-motion-inner-pending)
xmap ic <plug>(signify-motion-inner-visual)
omap ac <plug>(signify-motion-outer-pending)
xmap ac <plug>(signify-motion-outer-visual)
