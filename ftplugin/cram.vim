if exists('b:did_ftplugin')
    finish
endif

let b:did_ftplugin = 1
let b:undo_ftplugin = ''

command! -nargs=? CramConfig call cram#load_configuration(<q-args>)
command! -nargs=? Cram       call cram#run(<q-args>)
