set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set ruler              			            " Show the cursor position all the time
set relativenumber
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set nowrap
set cc=80
filetype plugin indent on   " allows auto-indenting depending on file type

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

set clipboard+=unnamedplus


"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''"
"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''"

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.nvim/plugged')

    " Declare the list of plugins.
    Plug 'neoclide/coc.nvim', {'branch': 'release'}     " code completion
"    Plug 'shapeoflambda/dark-purple.vim'    " color theme
    Plug 'flazz/vim-colorschemes'
"    Plug 'itchyny/lightline.vim' " lightline minimalist bottom bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'preservim/nerdtree'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'

"    Plug 'mattn/emmet-vim'
"    Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''"
"                                COLORS                               "
"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''"



syntax enable
set termguicolors

" " Always show lightline
" set laststatus=2
" let g:lightline = {
"       \ 'colorscheme': 'dark_purple',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             ['readonly', 'filename', 'modified' ] ],
"       \   'right': [ [ 'lineinfo' ],
"       \              [ 'filetype' ],
"       \              [ 'gitbranch'] ]
"       \ },
"       \ 'component_function': {
"       \   'gitbranch': 'fugitive#head'
"       \ },
"       \ }
" 
"
colorscheme vice

" New Bar
" Airline THeme
" 

let g:airline_theme='jellybeans'


" ----------------------------
" NERD TREE
" Start NERDTree. If a file is specified, move the cursor to its window.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif " Open the existing NERDTree on each new tab.  autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif


" '''''''''''''''''''''''''''''''''''''
" LATEX LIFE PREVIEW
" DEFUALT PDF VIEWER
" let g:livepreview_previewer = 'zathura'



" '''''''''''''''''''''''''''''''''''''
" Switch windows faster
" Switch between different windows by their direction`
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
