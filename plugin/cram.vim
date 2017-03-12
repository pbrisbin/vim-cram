if exists('g:loaded_cram') || &cp || v:version < 700
    finish
endif

let g:vimcram#version = "0.1.0"
let g:vimcram#indent = get(g:, 'vimcram#indent', 4)

command! -nargs=? -complete=file CramConfig :call cram#load_configuration(<q-args>)
command! -nargs=? -complete=file Cram       :call cram#run(<q-args>)

let g:loaded_cram = 1
