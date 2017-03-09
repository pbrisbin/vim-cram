if exists('b:current_syntax')
    finish
endif

" Include shell syntax file
execute 'syntax include @CramShellHighlight $VIMRUNTIME/syntax/sh.vim'
syntax match CramAnnotation '\v^\S.+$'

" Highlight cram test annotations as bash syntax
syntax match CramCommandStart '\v^\s+\zs\$\ze\s*.+$' containedin=CramCommand
syntax match CramCommand      '\v^\s+\$\s*.+$' contains=@CramShellHighlight

highlight default link CramAnnotation   Title
highlight default link CramCommandStart Todo

let b:current_syntax = 'cram'
