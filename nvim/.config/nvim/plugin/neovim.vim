nnore <leader>pv :Sex!<cr>
nnore <leader>th :vs +te<cr>
nnore <leader>term :split +te<cr>

nnore <leader>= :vertical resize +5<cr>
nnore <leader>- :vertical resize -5<cr>

" Running python commands
nnoremap <C-R> :sp <cr> :term python % <cr>

" Buffers
nnoremap <C-H> :tabprevious<CR>
nnoremap <C-L> :tabnext<CR>

" Restart
nnore <leader>s :source $MYVIMRC<CR>

" Execute this file
function! s:save_and_exec() abort
  if &filetype == 'vim'
    :silent! write
    :source %
  elseif &filetype == 'lua'
    :silent! write
    :lua require("plenary.reload").reload_module'%'
    :luafile %
  endif

  return
endfunction
" save and resource current file
nnoremap <leader><leader>x :call <SID>save_and_exec()<CR>
