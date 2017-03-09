" Load the indent from a .cramrc file
function! cram#load_configuration(filename)
    try
        let config = readfile(a:filename)
    catch /^Vim\%((\a\+)\)\=:E484/
        echoerr "vim-cram: Failed to open file " . a:filename
        return {}
    endtry

    let i = 0

    " Find the position of the cram entry
    while i < len(config) && config[i] !~# '[cram]'
        let i += 1
    endwhile

    if i >= len(config)
        echoerr "vim-cram: Not a .cramrc file"
    endif

    " Find the value of the 'indent' setting
    while i < len(config)
        let m = matchlist(config[i], '\v^\s*(\w+)\s*=\s*(\w+)\s*$')

        if len(m) >= 3
            let [key, value] = m[1], m[2]

            if key == 'indent'
                let g:vimcram#indent = str2nr(value)
                return
            endif
        endif

        let i += 1
    endwhile

    " Default to four
    let g:vimcram#indent = 4
endfunction

" Run cram on the current file
function! cram#run()
endfunction
