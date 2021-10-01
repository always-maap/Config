syntax on

source $HOME/.config/nvim/plug-config/coc.vim

set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set encoding=UTF-8
set guifont=Nerd\ 10

call plug#begin('~/.vim/plugged')

    " Plug 'morhetz/gruvbox'
    Plug 'leafgarland/typescript-vim'                         
    Plug 'prettier/vim-prettier'
    " Plug 'maxmellon/vim-jsx-pretty'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'preservim/nerdtree'
    " Plug 'ryanoasis/vim-devicons'

    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Plug 'tomasr/molokai'

    Plug 'ray-x/lsp_signature.nvim'

    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    
    Plug 'lewis6991/gitsigns.nvim'

    Plug 'rust-lang/rust.vim'

    Plug 'jiangmiao/auto-pairs'

    Plug 'chriskempson/base16-vim'

call plug#end()


let mapleader = " "

autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html,*.mdx PrettierAsync

" Open NERDTree
nnoremap <silent><Leader>pv :NERDTreeFind<CR>

" Switch to Vim window
nnoremap <leader>h :wincmd h<CR>                                               
nnoremap <leader>j :wincmd j<CR>                                               
nnoremap <leader>k :wincmd k<CR>                                               
nnoremap <leader>l :wincmd l<CR>

" Telescope leader mapping
nnoremap <leader>ff <cmd>Telescope git_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Jump to definition and type-definition
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gt <Plug>(coc-type-definition)

" Jump to error|warning with `F2`
try
    nmap <silent> <F2> :call CocAction('diagnosticNext')<cr>
    " nmap <silent> ]c :call CocAction('diagnosticPrevious')<cr>
endtry
