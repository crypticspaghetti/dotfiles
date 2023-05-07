call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
    Plug 'chrisbra/csv.vim'
    Plug 'moll/vim-bbye'
    Plug 'simeji/winresizer'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'simnalamburt/vim-mundo'
    Plug 'christoomey/vim-tmux-navigator'
call plug#end()
set clipboard+=unnamedplus

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

nnoremap <Space> <Nop>
let mapleader = "\<Space>"
nnoremap <leader>bn :bn<CR> ;buffer next
nnoremap <leader>tn gt ;new tab
let g:winresizer_start_key = "<leader>w"

" no swap file
set noswapfile

" save undo-trees in file
set undofile
set undodir=$HOME/.config/nvim/undo

" number of undo to save
set undolevels=10000
set undoreload=10000

" set line number
set number

" use 4 spaces instead of tab ()
" copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

