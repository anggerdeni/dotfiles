fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

fun! Format()
    let l:save = winsaveview()
    :lua vim.lsp.buf.formatting_sync()
    call winrestview(l:save)
endfun

augroup AN0NVI
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
    autocmd BufWritePre *.go :call Format()
    autocmd BufWritePre *.rs :call Format()
augroup END
