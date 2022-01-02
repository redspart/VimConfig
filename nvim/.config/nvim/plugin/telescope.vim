nnoremap <C-p> :lua require('telescope.builtin').git_files()<cr>
nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<cr>
nnoremap <leader>pt :lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>tt :lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>tb :lua require('telescope.builtin').buffers()<cr>

" Custom "goTo-s"
nnoremap <leader>dot :lua require("redspart.telescope").search_dotfiles({dots = vim.env.MYVIMRC})<cr>

"git
nnoremap <leader>gc :lua require("redspart.telescope").git_branches()<cr>

" worktrees
nnoremap <leader>gw :lua require('telescope').extensions.git_worktree.git_worktrees()<CR>
nnoremap <leader>gm :lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>
nnoremap <leader>tst :lua print(vim.env.MYVIMRC)<CR>
