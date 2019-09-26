set conceallevel=0
set ignorecase
set smartcase 
set nu
set tabstop=4 shiftwidth=4 expandtab
set hlsearch
set incsearch
set cursorline
"set cursorcolumn
map ,b oimport pdb;pdb.set_trace()<ESC>


let g:airline_powerline_fonts = 0
let g:airline_theme='badwolf'
let g:deoplete#enable_at_startup = 1
filetype plugin indent on
set t_Co=256
syntax on
syntax enable
let g:pymode_python = 'python'
let g:syntastic_python_pylint_exe = 'python3 -m pylint'
let g:syntastic_python_pyflakes_exe = 'python3 -m pyflakes'
call plug#begin('~/.vim/autoload')
"   Plug 'python/black'
    Plug 'morhetz/gruvbox'
    Plug 'roxma/nvim-yarp' " for deoplete
    Plug 'roxma/vim-hug-neovim-rpc'
    Plug 'ericbn/vim-solarized'
    Plug 'davidhalter/jedi-vim', {'for' : 'python'}
    Plug 'osyo-manga/vim-over'
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'KeitaNakamura/highlighter.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'zchee/deoplete-jedi'
    Plug 'tmhedberg/SimpylFold'
    Plug 'Konfekt/FastFold'
    Plug 'ervandew/supertab'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'tpope/vim-fugitive'
    Plug 'python-mode/python-mode'  , {'branch': 'develop'}
    Plug 'python-rope/ropevim'
    Plug 'vim-airline/vim-airline', {'for': 'python' }
    Plug 'vim-airline/vim-airline-themes'
"   Plug 'bling/vim-bufferline'
    Plug 'flazz/vim-colorschemes'
    Plug 'Yggdroot/indentLine', {'for': 'python'}
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py' , 'for': 'python' }
    Plug 'jceb/vim-orgmode'
"   Plug 'kiteco/vim-plugin'
    Plug 'tpope/vim-fugitive'
call plug#end()

"autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
"let s:editor_root=expand("~/.config/nvim")
"set completeopt-=preview
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 0
let g:SimpylFold_fold_docstring = 0
let mapleader = ','
"let g:python_host_prog = '/usr/bin/python2.7'
let g:python3_host_prog = '/opt/miniconda/bin/python3.7'
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope = 0
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
set t_ut=

"let g:solarized_termcolors=256
"colorscheme solarized
"set background=light 
"set termguicolors

