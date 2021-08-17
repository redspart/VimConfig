nnoremap <leader>tg :lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<cr>
nnoremap <leader>tt :lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>tb :lua require('telescope.builtin').buffers()<cr>
