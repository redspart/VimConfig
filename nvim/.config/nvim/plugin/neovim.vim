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
