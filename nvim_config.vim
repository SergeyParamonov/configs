set conceallevel=0
set ignorecase
set smartcase 
set nu
set tabstop=4 shiftwidth=4 expandtab
set encoding=utf-8


filetype plugin indent on
set t_Co=256
syntax on
call plug#begin('~/.config/nvim/autoload/')
let g:coc_start_at_startup = 1
let g:airline_section_z = '%t'
let g:black_linelength = 79
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
let g:deoplete#enable_at_startup = 1
let g:black_virtualenv="~/.vim_black"

cnoreabbrev fzf FZF
let $FZF_DEFAULT_OPTS = '--bind alt-q:select-all+accept'


if has('nvim')
"   Plug 'fisadev/vim-isort'
"   Plug 'neoclide/coc-python'
"   Plug 'EgZvor/vim-black'
"   Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
    Plug 'ervandew/supertab'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
    Plug 'neoclide/coc-json'
    Plug 'puremourning/vimspector'
    Plug 'tpope/vim-eunuch'
    Plug 'vifm/vifm'
    Plug 'vifm/vifm.vim'
    Plug 'luochen1990/rainbow'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'psf/black', { 'branch': 'stable' }
    Plug 'osyo-manga/vim-over'
    Plug 'scrooloose/nerdtree', 
    Plug 'ryanoasis/vim-devicons'
    Plug 'KeitaNakamura/highlighter.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Konfekt/FastFold'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'skywind3000/gutentags_plus'
    Plug 'tpope/vim-fugitive'
    Plug 'python-rope/ropevim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'bling/vim-bufferline'
    Plug 'flazz/vim-colorschemes'
    Plug 'morhetz/gruvbox'
    Plug 'Yggdroot/indentLine', {'for': 'python'}
    Plug 'jceb/vim-orgmode'
    Plug 'machakann/vim-swap'
    Plug 'tpope/vim-obsession'

"   Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}
"   Plug 'davidhalter/jedi-vim'
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"   Plug 'zchee/deoplete-jedi'
"   Plug 'tmhedberg/SimpylFold'
"   Plug 'python-mode/python-mode', {'branch': 'develop'}
"   Plug 'kiteco/vim-plugin'
"   Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
"   Plug 'itchyny/lightline.vim'
endif
call plug#end()


let mapleader = ','
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"   cnoreabbrev Ack Ack!
"   cnoreabbrev ack Ack!
"   nnoremap <Leader>a :Ack!<Space>
"silent! nmap <C-p> :CHADopen<CR>
silent! nmap <C-f> :Vifm<CR>
silent! map <F2> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind <CR>


"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
"let s:editor_root=expand("~/.config/nvim")
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 0
let g:SimpylFold_fold_docstring = 0
let g:python_host_prog = '/usr/bin/python3'
let g:python3_host_prog = '/opt/homebrew/bin/python3.10'
let g:pymode_folding = 0
"set statusline+=%F
"set statusline+=%{gutentags#statusline()}
set splitbelow
let g:pymode_options_colorcolumn = 0
let g:pymode_lint_write = 0 
let g:pymode_lint_ignore = ["E2","E3","E501","W605","E127","E701","W391","E731","W0401", "E122", "E402", "W0611", "E705", "E702"]
let g:rainbow_active = 1

colorscheme gruvbox
set background=dark
autocmd Filetype json let g:indentLine_setConceal = 0
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
let g:ycm_always_populate_location_list = 1
map ,b oimport ipdb;ipdb.set_trace()  # type: ignore<ESC>



" to help with unresolved imports
autocmd FileType python let b:coc_root_patterns = ['.git', '.env', '.venv']
let g:gutentags_exclude_filetypes = ['gitcommit', 'gitconfig', 'gitrebase', 'gitsendemail', 'git']
"let g:gutentags_trace = 1



" Fugitive Conflict Resolution
nnoremap <leader>gd :Gdiff!<CR>
nnoremap <leader>gr :diffget //3<CR>
nnoremap <leader>gl :diffget //2<CR>
set diffopt+=vertical


"
"-------- Coc-python --------------------
" taken from https://github.com/neoclide/coc.nvim
"
let g:coc_data_home = '~/.config/coc'

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" doesn't work well for me
" Give more space for displaying messages.
" set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
