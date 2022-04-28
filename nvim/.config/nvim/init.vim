call plug#begin('~/.vim/plugged')

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Needed for telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug '~/Documents/Github/nvim-remote-containers'

" Extras
Plug 'davidhalter/jedi-vim'

" Worktree
Plug 'ThePrimeagen/git-worktree.nvim'


" LSP/Auto Complete
Plug 'neovim/nvim-lspconfig', {'branch': 'master'}
Plug 'hrsh7th/nvim-compe'

" Themes
Plug 'gruvbox-community/gruvbox'
"Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
"

" rust
Plug 'simrat39/rust-tools.nvim'
call plug#end()

colorscheme gruvbox

let mapleader = " "

lua require("redspart")
