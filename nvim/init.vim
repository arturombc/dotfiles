" Plugins
call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
    Plug 'chrisbra/csv.vim'
    Plug 'moll/vim-bbye'
    Plug 'simeji/winresizer'
    Plug 'junegunn/fzf.vim'
    Plug 'simnalamburt/vim-mundo'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'github/copilot.vim'
    Plug 'tpope/vim-fugitive' " Git commands in nvim
    Plug 'tpope/vim-surround' " Surround text objects
    Plug 'jiangmiao/auto-pairs' " Auto close brackets
    Plug 'neoclide/coc.nvim', {'branch': 'release'} " Autocomplete
    Plug 'honza/vim-snippets' " Snippets

    " tmux
    Plug 'wellle/tmux-complete.vim'
    Plug 'tmux-plugins/vim-tmux'
    Plug 'tmux-plugins/vim-tmux-focus-events'
    Plug 'christoomey/vim-tmux-navigator'

    " Man pages in nvim
    Plug 'jez/vim-superman'

    " Compiler and linter
    Plug 'neomake/neomake'
    
    Plug 'easymotion/vim-easymotion'
    Plug 'wellle/targets.vim'
    Plug 'bfredl/nvim-miniyank'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes' " Themes for airline
    Plug 'morhetz/gruvbox' " Theme
    Plug 'mhinz/vim-startify' " Start screen
    
    " Git
    Plug 'tpope/vim-fugitive'    
    Plug 'airblade/vim-gitgutter'
    Plug 'rhysd/git-messenger.vim'
    Plug 'junegunn/gv.vim'

    Plug 'PotatoesMaster/i3-vim-syntax'
    Plug 'wgwoods/vim-systemd-syntax'
    Plug 'whatyouhide/vim-tmux-syntax'
    Plug 'tpope/vim-markdown'

    " Misc
    Plug 'tpope/vim-abolish'
    Plug 'tpope/vim-commentary'
    Plug 'machakann/vim-highlightedyank'
    Plug 'tpope/vim-repeat'
    Plug 'ap/vim-css-color'
    Plug 'andymass/vim-matchup'
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-vinegar'
    Plug 'tpope/vim-repeat'


call plug#end()

set clipboard+=unnamedplus

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" no swap file
set noswapfile

" save undo trees in files
set undofile
set undodir=$HOME/.config/nvim/undo

" number of undo saved
set undolevels=10000
set undoreload=10000

"set line number
set number

" use 4 spaces instead of tab
" copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" show substitution
set inccommand=nosplit

nnoremap <space> <nop>
let mapleader = "\<space>"

nnoremap <leader>bn :bn<cr> ;buffer next

" Config for chrisbra/csv.vim
augroup filetype_csv
    autocmd!

    autocmd BufRead,BufWritePost *.csv :%ArrangeColumn!
    autocmd BufWritePre *.csv :%UnArrangeColumn
augroup END

" Config for simeji/winresizer
let g:winresizer_start_key = "<leader>w"

" Config for fzf.vim 
nnoremap <leader>f :Files<cr>

nnoremap <c-w>v <c-w>s
nnoremap <c-w>h <c-w>v

"###########
"# coc.vim #
"###########

let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-pairs',
    \ 'coc-json',
    \ 'coc-tsserver',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-pyright',
    \ 'coc-clangd',
    \ 'coc-r-lsp',
    \ 'coc-yaml', 
    \ 'coc-xml', 
    \ 'coc-explorer',
    \]

" Open CocExplorer with <leader>e
nmap <leader>e <Cmd>CocCommand explorer<CR>

" toggle between absolute and relative line numbers
nnoremap <C-n> :set relativenumber!<CR>

" Set relative line numbers
set relativenumber

set signcolumn=no
