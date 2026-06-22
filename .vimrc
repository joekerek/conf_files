syntax on
set fileformat=unix
set encoding=UTF-8
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4

set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smarttab
set expandtab
set nowrap
set list
set listchars=eol:.,tab:>-,trail:~,extends:>,precedes:<
set cursorline
set number
set relativenumber
set scrolloff=8
set signcolumn=yes
set showcmd
set conceallevel=1
set noerrorbells visualbell t_vb=
set clipboard=unnamed
set ignorecase
set smartcase
set incsearch
set hlsearch
set re=2
nnoremap <CR> :noh<CR><CR>:<backspace>
tnoremap <Esc> <C-\><C-n>
so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
so ~/.vim/autoclose.vim

call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

let g:javascript_conceal_function="ƒ"
colorscheme dracula
