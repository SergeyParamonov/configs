set conceallevel=0
set ignorecase
set smartcase 
set nu
set tabstop=4 shiftwidth=4 expandtab

let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
let g:deoplete#enable_at_startup = 1
filetype plugin indent on
set t_Co=256
syntax on
call plug#begin('~/.config/nvim/plugged')

if has('nvim')
    Plug 'davidhalter/jedi-vim'
    Plug 'osyo-manga/vim-over'
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'KeitaNakamura/highlighter.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'zchee/deoplete-jedi'
    Plug 'tmhedberg/SimpylFold'
    Plug 'Konfekt/FastFold'
    Plug 'ervandew/supertab'
"   Plug 'ludovicchabant/vim-gutentags'
    Plug 'tpope/vim-fugitive'
    Plug 'python-mode/python-mode', {'branch': 'develop'}
    Plug 'python-rope/ropevim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'bling/vim-bufferline'
    Plug 'flazz/vim-colorschemes'
    Plug 'morhetz/gruvbox'
    Plug 'Yggdroot/indentLine', {'for': 'python'}
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
    Plug 'jceb/vim-orgmode'
    Plug 'kiteco/vim-plugin'
"   Plug 'itchyny/lightline.vim'
endif
call plug#end()

"autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let s:editor_root=expand("~/.config/nvim")
"set completeopt-=preview
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 0
let g:SimpylFold_fold_docstring = 0
let mapleader = ','
let g:python_host_prog = '/usr/bin/python2.7'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:pymode_folding = 0
set statusline=%f
"set statusline+=%{gutentags#statusline()}
set splitbelow
let g:pymode_options_colorcolumn = 0
let g:pymode_lint_write = 0 
let g:pymode_lint_ignore = ["E2","E3","E501","W605","E127","E701","W391","E731"]

colorscheme gruvbox
set background=dark
autocmd Filetype json let g:indentLine_setConceal = 0
autocmd Filetype python nnoremap <leader>e :YcmCompleter GoToReferences<CR>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
let g:ycm_always_populate_location_list = 1
let g:pymode_breakpoint_cmd='import pdb; pdb.set_trace() #XXX BREAKPOINT'
