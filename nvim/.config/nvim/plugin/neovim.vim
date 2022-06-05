nnore <leader>pv :Sex!<cr>
nnore <leader>th :vs +te<cr>
nnore <leader>term :split +te<cr>

nnore <leader>= :vertical resize +5<cr>
nnore <leader>- :vertical resize -5<cr>

" Running python commands
nnoremap <C-R> :sp <cr> :term python3 % <cr>

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


nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>de :call vimspector#Reset()<CR>
nnoremap <Leader>dc :call vimspector#Continue()<CR>

nnoremap <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dT :call vimspector#ClearBreakpoints()<CR>

nmap <Leader>dk <Plug>VimspectorRestart
nmap <Leader>dh <Plug>VimspectorStepOut
nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver
