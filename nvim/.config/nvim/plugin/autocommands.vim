fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup CLEANUP
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 10000)
