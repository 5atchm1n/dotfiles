" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    c.vim                                              :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: sshakya <marvin@42.fr>                     +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2020/11/25 23:55:08 by sshakya           #+#    #+#              "
"    Updated: 2020/11/26 01:53:11 by sshakya          ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

"the birth of my syntax file !!


"this one highlights structs based on 42 naming norm!
syn match cType "\<[st]_[a-zA-Z_][a-zA-Z0-9_]*\>"

" created a UserType for malloc and free highlighting
syntax keyword cUserType malloc free

" set the font colour of the cUserType
highlight cUserType ctermfg=142
