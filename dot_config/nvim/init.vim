" general
set relativenumber
syntax enable
set clipboard+=unnamedplus
set mouse=a
set tabstop=2

let mapleader = " "

" Vim plug
source ~/.config/nvim/src/plugins.vim

set termguicolors
set t_Co=256
set background=dark
highlight Normal ctermbg=NONE
colorscheme tokyonight

let g:tokyonight_style = "night"

if (has("termguicolors"))
  set termguicolors
endif

source ~/.config/nvim/src/coc.vim

lua require('autopairs-config')
lua require('buffer-line-config')
lua require('feline-config')
lua require('comment-plugin')
lua require('gitsigns-config')
lua require('indent-blankline-config')
lua require('keymap-config')
lua require('nvim-tree-config')
lua require('telescope-config')
lua require('tree-sitter-config')
