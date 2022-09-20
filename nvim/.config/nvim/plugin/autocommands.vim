fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup CLEANUP
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

set updatetime=300
autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 10000)
autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 200)
