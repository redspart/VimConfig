vim.cmd [[ packadd vim-jetpack ]]

require('jetpack').setup {
    { "tani/vim-jetpack", opt = true },
    {'nvim-treesitter/nvim-treesitter', run ='TSUpdate'},

    -- Needed for telescope
    'nvim-lua/popup.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'nvim-telescope/telescope-fzy-native.nvim',
    '~/Documents/Github/nvim-remote-containers',

    -- Python
    'davidhalter/jedi-vim',
    'puremourning/vimspector',

    -- Rust
    'simrat39/rust-tools.nvim',

    -- Worktree
    'ThePrimeagen/git-worktree.nvim',

    -- Markdown
    {'iamcco/markdown-preview.nvim', run = 'call mkdp#util#install()'},

    -- LSP
    {'neovim/nvim-loading', branch = 'master'},
    {'neovim/nvim-lspconfig', branch = 'master'},
    'hrsh7th/nvim-compe',

    -- Themes
    'gruvbox-community/gruvbox'
}
