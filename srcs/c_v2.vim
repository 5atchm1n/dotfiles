" the birth of my syntax file
" this one highlights structs based on 42 naming norm
syn match cType "\<[stue]_[a-zA-Z_][a-zA-Z0-9_]*\>"
syn match Constant "\<[SML]_[a-zA-Z_][a-zA-Z0-9_]*\>"
syn match cStdarg "\<KEY_[a-zA-Z_][a-zA-Z0-9_]*\>"
syn match cStdarg "\<OP_[a-zA-Z_][a-zA-Z0-9_]*\>"
syn match cStdarg "\<NO_[a-zA-Z_][a-zA-Z0-9_]*\>"
syn match cStdarg "\<REDIR_[a-zA-Z_][a-zA-Z0-9_]*\>"
syn match cMyErr "\<ERR_[a-zA-Z_][a-zA-Z0-9_]*\>"

" created a UserType for malloc and free highlighting
syntax keyword cUserType malloc free read write open

"create a UserType for stdarg
syntax keyword cStdarg va_start va_end va_arg fabs sin cos
syntax keyword cMyErr errno ERROR

" set the font colour of the cUserType
highlight cUserType ctermfg=142
highlight cMyErr ctermfg=169

" set the font colour of the cUserType
highlight cStdarg ctermfg=136

" highlight struct syntax
" Need to look at VIM REGEX closely
" highlight struct pointer after '->'
" highlight struct syntax -- need to fix to not highlight '->'
"syntax match cMyStruct2 "\<[a-zA-Z_]*->[a-zA-Z0-9_]*\>"
syntax match cMyStruct1 "\(->\)\@<=[a-zA-Z0-9_]\+\s*\((\)\@!"
highlight cMyStruct1 ctermfg=73
highlight cMyStruct2 ctermfg=143

" highlight struct element after '.'
syntax match cMyStructDot "\(\.\)\@<=[a-zA-Z0-9_]\+\s*\((\)\@!"
highlight cMyStructDot ctermfg=181

" highlight the Standard Function --  Libft (Ecole 42)
syn match cLibft "\<ft_[a-zA-Z_][a-zA-Z0-9_]*\>"
" highlight the Standard Function -- Get Next Line (Ecole 42)
syn match cLibft "\<gnl_[a-zA-Z_][a-zA-Z0-9_]*\>"
" highlight the Standard Function --  Printf(Ecole 42)
syn match cLibft "\<pf_[a-zA-Z_][a-zA-Z0-9_]*\>"
highlight cLibft ctermfg=109
" highlight Project functions -- (Ecole 42)
syn match cProjects "\<cub_[a-zA-Z_][a-zA-Z0-9_]*\>"
syn match cProjects "\<ps_[a-zA-Z_][a-zA-Z0-9_]*\>"
syn match cProjects "\<ms_[a-zA-Z_][a-zA-Z0-9_]*\>"
syn match cProjects "\<mn_[a-zA-Z_][a-zA-Z0-9_]*\>"
highlight cProjects ctermfg=146
