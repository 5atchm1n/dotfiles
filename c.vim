" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    c.vim                                              :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: sshakya <marvin@42.fr>                     +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2020/11/25 23:55:08 by sshakya           #+#    #+#              "
"    Updated: 2020/12/04 22:57:18 by sshakya          ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

"the birth of my syntax file !!

"this one highlights structs based on 42 naming norm!
syn match cType "\<[st]_[a-zA-Z_][a-zA-Z0-9_]*\>"

" created a UserType for malloc and free highlighting
syntax keyword cUserType malloc free read write

" set the font colour of the cUserType
highlight cUserType ctermfg=142

" get_next_line stuff
syntax keyword GNLType data buff ifd next head
highlight GNLType ctermfg=143

" highlight the ft_functions (Ecole 42)
syn match cFn42 "\<ft_[a-zA-Z_][a-zA-Z0-9_]*\>"
highlight cFn42 ctermfg=109
