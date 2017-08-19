execute pathogen#infect()

# Highlighting
filetype on
syntax on
colorscheme railscasts

# Font
set guifont=Menlo\ Regular:h18

# Open with given size
set lines=35 columns=150

# Add colored column at 90 to avoid going too far to the right
set colorcolumn=90

# Add line numbering
set number

# Every command will be proceeded by this key
let mapleader=" "

# Reload vim config when leader key + s is pressed (only works for .vimrc changes and not for adding or removing plugins.)
map <leader>s :source ~/.vimrc<CR>

# Keep more info in memory
set hidden
set history=100

# Indentation logic
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

# Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

# Highlight found words on search
set hlsearch

# Cancel search with escape
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

# Use arrow keys
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

# Reopen previously opened file
nnoremap <Leader><Leader> :e#<CR>

# Show matching parenthesis
set showmatch

# Have Command-T ignore these extensions
set wildignore+=*.log,*.sql,*.cache

# Command to quickly reindex new files (leader + r)
noremap <Leader>r :CommandTFlush<CR>

# Let the right arrow key open a node
let NERDTreeMapActivateNode='<right>'

# Display hidden files
let NERDTreeShowHidden=1

# Toggle ddisplay of the tree with <Leader> + n
nmap <leader>n :NERDTreeToggle<CR>

# Locate the focused file in the tree with <Leader> + j:
nmap <leader>j :NERDTreeFind<CR>

#Always open the tree when booting Vim, but don’t focus it:
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

# Do not display some useless files in the tree:
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']

# Set CWD
set autochdir
