" general
set relativenumber
syntax enable
set mouse=a

let mapleader = " "

" Vim plug
source ~/.config/nvim/src/plugins.vim

source ~/.config/nvim/src/buffer-line.vim
source ~/.config/nvim/src/coc.vim
source ~/.config/nvim/src/keymap.vim
source ~/.config/nvim/src/lightline.vim
source ~/.config/nvim/src/telescope.vim

lua require('autopairs-config')
lua require('gitsigns-config')
lua require('indent-blankline-config')
lua require('nvim-tree-config')
lua require('tree-sitter-config')


set termguicolors
let g:gruvbox_contrast_dark = 'hard'
set t_Co=256
set background=dark
highlight Normal ctermbg=NONE
colorscheme onedark

let g:lightline = {'colorscheme': 'onedark'}

if (has("termguicolors"))
  set termguicolors
endif