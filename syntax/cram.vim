if exists('b:current_syntax')
    finish
endif

" Include shell syntax file
execute 'syntax include @cramShellHighlight $VIMRUNTIME/syntax/sh.vim'
syntax match cramAnnotation '\v^\S.+$'

" Highlight cram test annotations as bash syntax
syntax match cramCommandStart '\v^\s+\zs\$\ze\s*.+$' containedin=cramCommand
syntax match cramCommand      '\v^\s+\$\s*.+$' contains=@cramShellHighlight

highlight default link cramAnnotation   Title
highlight default link cramCommandStart Todo

let b:current_syntax = 'cram'
