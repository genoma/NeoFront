" Starting from https://github.com/skwp/dotfiles/blob/master/vimrc and
" Tim Pope Vim Sensible https://github.com/tpope/vim-sensible the new
" setting file is more readable and more usable.

call plug#begin('~/.config/nvim/plugged')

" Main packages

Plug 'JulesWang/css.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'Raimondi/delimitMate'

Plug 'Valloric/YouCompleteMe', { 'do': 'python install.py' }

" Plug 'Shougo/deoplete.nvim'
" Plug 'Shougo/context_filetype.vim'

" Plug 'airblade/vim-gitgutter'

Plug 'mhinz/vim-signify'

Plug 'bling/vim-airline'
" Plug 'burnettk/vim-angular'
" Plug 'chrisbra/csv.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'gcmt/wildfire.vim'
Plug 'genoma/vim-less'
" Plug 'genoma/vim-literate-coffeescript'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-gtfo'
Plug 'kchmck/vim-coffee-script'
Plug 'mattn/emmet-vim'
" Plug 'moll/vim-node'
Plug 'morhetz/gruvbox'
Plug 'ntpeters/vim-better-whitespace'
Plug 'othree/html5.vim'
Plug 'leafgarland/typescript-vim'

Plug 'Chiel92/vim-autoformat'


Plug 'pangloss/vim-javascript'


Plug 'plasticboy/vim-markdown'
Plug 'gabesoft/vim-ags'

" Plug 'scrooloose/syntastic'
Plug 'benekastah/neomake'

Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'


Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-git'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-obsession'
" Plug 'tpope/vim-vinegar'
Plug 'rstacruz/vim-opinion'
Plug 'digitaltoad/vim-jade'
Plug 'romainl/Apprentice'
Plug 'junegunn/seoul256.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

Plug 'nathanaelkane/vim-indent-guides'

Plug 'scrooloose/nerdtree'

call plug#end()

" Mapleader is comma instead of backslash
let mapleader=","

" Omnifunc enabled by default
if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
        \ if &omnifunc == "" |
        \ setlocal omnifunc=syntaxcomplete#Complete |
        \ endif
endif

" jump to the last edited line of the file
function! SetCursorPosition()
  if &filetype !~ 'svn\|commit\c'
    if line("'\"") > 0 && line("'\"") <= line("$") |
      execute 'normal! g`"zvzz' |
    endif
  end
endfunction

autocmd BufReadPost * call SetCursorPosition()

" Terminal bindings for NeoVim
" terminal emulation
if has("nvim")
  tnoremap <Esc> <C-\><C-n>
  noremap <leader>t :term zsh<CR>
endif

" Syntax sync Vim wiki
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>
autocmd BufEnter * :syntax sync fromstart

" Use an undo file
set undofile
" Set a directory to store the undo history
set undodir=~/.vimundo/

" Autoread changed files
set autoread

" ========================================

" Prepare sensible/opinion overrides
runtime! plugin/sensible.vim
runtime! plugin/opinion.vim

" Set nohlsearch
set nohlsearch

" Override Opinion fold method
set foldmethod=manual
set foldnestmax=10
set nofoldenable
set foldlevel=1

" Override numberwidth
set numberwidth=1

" =============== Personalized Settings =============
for fpath in split(globpath('~/.config/nvim/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor
