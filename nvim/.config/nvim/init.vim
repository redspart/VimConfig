call plug#begin('~/.vim/plugged')

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Needed for telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" File Explorer
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" Extras
Plug 'davidhalter/jedi-vim'

" LSP/Auto Complete
Plug 'neovim/nvim-lspconfig', {'branch': 'master'}
Plug 'hrsh7th/nvim-compe'

" Themes
"Plug 'gruvbox-community/gruvbox'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
call plug#end()

" My stuff
lua require("redspart")

colorscheme tokyonight
"colorscheme gruvbox

let mapleader = " "

" setups
lua require'nvim-treesitter.configs'.setup { ensure_installed = "maintained", highlight = { enable = true }, indent= { enable = true } }
