" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    c.vim                                              :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: sshakya <marvin@42.fr>                     +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2020/11/25 23:55:08 by sshakya           #+#    #+#              "
"    Updated: 2021/04/10 08:00:27 by sshakya          ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

"the birth of my syntax file !!


"this one highlights structs based on 42 naming norm!
syn match cType "\<[stue]_[a-zA-Z_][a-zA-Z0-9_]*\>"

" created a UserType for malloc and free highlighting
syntax keyword cUserType malloc free read write open

"create a UserType for stdarg
syntax keyword cStdarg va_start va_end va_arg fabs sin cos

" set the font colour of the cUserType
highlight cUserType ctermfg=142

" set the font colour of the cUserType
highlight cStdarg ctermfg=136

" highlight struct syntax
" Need to look at VIM REGEX closely
" highlight struct pointer after '->'
syntax match cMyStruct1 "\(\->\)\@<=[a-zA-Z0-9_]\+\s*\((\)\@!"
" highlight struct syntax -- need to fix to not highlight '->'
syntax match cMyStruct2 "\<[a-zA-Z0-9_]*->\>"
highlight cMyStruct1 ctermfg=143
highlight cMyStruct2 ctermfg=3

" highlight struct element after '.'
syntax match cMyStructDot "\(\.\)\@<=[a-zA-Z0-9_]\+\s*\((\)\@!"
highlight cMyStructDot ctermfg=181

" highlight the Standard Function (Ecole 42)
syn match cLibft "\<ft_[a-zA-Z_][a-zA-Z0-9_]*\>"
syn match cLibft "\<gnl_[a-zA-Z_][a-zA-Z0-9_]*\>"
syn match cLibft "\<pf_[a-zA-Z_][a-zA-Z0-9_]*\>"
highlight cLibft ctermfg=109
" highlight CUB3D functions
syn match cCub3d "\<cub_[a-zA-Z_][a-zA-Z0-9_]*\>"
highlight cCub3d ctermfg=109
