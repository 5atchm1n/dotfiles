" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    .vimrc                                             :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: sshakya <marvin@42.fr>                     +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2020/11/25 15:47:44 by sshakya           #+#    #+#              "
"    Updated: 2020/12/04 22:53:19 by sshakya          ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

" This is my vimrc file for basic vim functionality
" This is what works best for me !!

" your mouse will work
set mouse=a
" highlights as you type search string
set incsearch
" auto tab when newline
set autoindent
" Syntax colours
syntax on
" set line number
set number
" ignorecase when searching
set ignorecase
"highlights matches when searching
set showmatch
"sets max row width (Norme 42)
set textwidth=80
"used to highlight l81 (Norme 42)
set colorcolumn=+1
"highlight current line
set cursorline
"set tab to match ecole42
set tabstop=4
set shiftwidth=4
set softtabstop=4
"add a line at column 81 to make sure norm 42 is respected.
highlight ColorColumn ctermbg=0 guibg=lightgrey
"@DaiClement whitespace trick
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
"Help with tabs
set smartindent
set cindent

" ++++++++++++++++++++++++++ "
"          NERDTree          "
" ++++++++++++++++++++++++++ "
" a file browser to optimise your workflow
" https://github.com/preservim/nerdtree -- full documention here

" map Ctrl-N to toggle NerdTree
map <C-n> :NERDTreeToggle<CR>

" auto load NERDTREE when starting vim with no file/folder
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" https://colorswat.ch/vim/  -- site to see themes and colors

" ++++++++++++++++++++++++++ "
"        SpaceGray           "
" ++++++++++++++++++++++++++ "
" the spacegrey theme works best for me but there are many 
" https://github.com/ajh17/Spacegray.vim -- full documentation here

let g:spacegray_use_italics = 1

colorscheme spacegray
