set relativenumber
syntax enable
set mouse=a

let mapleader = " "

call plug#begin('~/.vim/plugged')

" file tree
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" theming
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'haishanh/night-owl.vim'

"
Plug 'itchyny/lightline.vim'

"
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/0.x'
  \ }

"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim'

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'kyazdani42/nvim-tree.lua'

" git stuff
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'

"
Plug 'windwp/nvim-autopairs'

" rust
Plug 'rust-lang/rust.vim'

"
Plug 'airblade/vim-rooter'

"
Plug 'lukas-reineke/indent-blankline.nvim'

"
Plug 'github/copilot.vim'

call plug#end()

for f in glob('~/.config/nvim/src/*.vim', 0, 1)
  execute 'source' f
endfor

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


