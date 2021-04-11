nnore <leader>tg :lua require('telescope.builtin').git_files()<cr>
nnore <leader>t :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<cr>
