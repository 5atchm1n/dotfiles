set mouse=a
set incsearch
set autoindent
syntax on
set number
set ignorecase
set showmatch
set textwidth=80
set colorcolumn=+1
set cursorline

"add a line at column 80
highlight ColorColumn ctermbg=0 guibg=lightgrey


" ++++++++++++++++++++++++++ "
"          NERDTree          "
" ++++++++++++++++++++++++++ "
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" ++++++++++++++++++++++++++ "
"        SpaceGray           "
" ++++++++++++++++++++++++++ "
let g:spacegray_use_italics = 1

colorscheme spacegray
