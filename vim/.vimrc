" Basic setup
set nocompatible            " Disable vi compatibility
filetype plugin indent on   " Enable filetype detection
syntax enable               " Syntax highlighting

" Leader key setup
let mapleader = " "         " Set space as leader key

" Plugin management (requires vim-plug: https://github.com/junegunn/vim-plug)
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'   " File browser
Plug 'itchyny/lightline.vim' " Status line
Plug 'tpope/vim-commentary' " Commenting
Plug 'tpope/vim-surround'   " Surround selections
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'     " Fuzzy finder
Plug 'morhetz/gruvbox'      " Color scheme
call plug#end()

" Visual settings
set termguicolors           " Enable true color support
colorscheme gruvbox         " Color scheme
set background=dark         " Dark mode
set number relativenumber   " Hybrid line numbers
set cursorline              " Highlight current line
set scrolloff=8             " Keep 8 lines around cursor
set signcolumn=yes          " Always show sign column

" Editing behavior
set tabstop=4               " Visual spaces per tab
set shiftwidth=4            " Indent size
set expandtab               " Use spaces instead of tabs
set smartindent             " Auto-indent new lines
set nowrap                  " No line wrapping
set list                    " Show invisible characters
set listchars=tab:▸\ ,trail:·,nbsp:␣

" Search settings
set ignorecase              " Case-insensitive search
set smartcase               " Case-sensitive if uppercase present
set incsearch               " Show matches as you type
set hlsearch                " Highlight matches

" Performance optimizations
set lazyredraw              " Redraw only when needed
set synmaxcol=200           " Limit syntax highlighting

" Key mappings
nmap <leader>w :w<CR>       " Quick save
nmap <leader>q :q<CR>       " Quick quit
nmap <leader>e :NERDTreeToggle<CR>
nmap <leader>f :Files<CR>
nmap <leader>b :Buffers<CR>
nmap <silent> <Tab> :bnext<CR>
nmap <silent> <S-Tab> :bprevious<CR>

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Auto-commands
augroup vimrc
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" File management
set undofile                " Persistent undo
set backup                  " Keep backups
set swapfile                " Keep swap files
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//