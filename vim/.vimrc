" Vimrc file, http://phuzz.org

set nocompatible    " use vim defaults
set ls=2            " allways show status line
set tabstop=4       " numbers of spaces of tab character
set shiftwidth=4    " numbers of spaces to (auto)indent
set softtabstop=4   " makes the spaces feel like real tabs
set scrolloff=3     " keep 3 lines when scrolling
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set visualbell t_vb=    " turn off error beep/flash
set novisualbell    " turn off visual bell
set nobackup        " do not keep a backup file
set number          " show line numbers
set ignorecase      " ignore case when searching
" set noignorecase   " don't ignore case
set title           " show title in console title bar
let &titleold=substitute(getcwd(), $HOME, "~", '')" set the working dorectory as tilte when vim closes
set ttyfast         " smoother changes
"set ttyscroll=0        " turn off scrolling, didn't work well with PuTTY
"set modeline        " last lines in document sets vim mode
"set modelines=3     " number lines checked for modelines
set shortmess=atI   " Abbreviate messages
set nostartofline   " don't jump to first character when paging
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
"set viminfo='20,<50,s10,h

set autoindent     " always set autoindenting on
set smartindent        " smart indent
"set cindent            " cindent
"set noautoindent
"set nosmartindent
"set nocindent  

"set autowrite      " auto saves changes when quitting and swiching buffer
"set expandtab      " tabs are converted to spaces, use only when required
"set noexpandtab    " don't expand tabs
"set sm             " show matching braces, somewhat annoying...
"set nowrap         " don't wrap lines

set splitbelow      " split window to below by default
set splitright      " split window to right by default

set statusline+=%F

syntax on           " syntax highlighing

" shortcuts
map <C-Up> <C-W>k
map <C-Down> <C-W>j
map <C-Left> <C-W>h
map <C-Right> <C-W>l

" for ctags
" map <C-A-Up> <C-t>
" map <C-A-Down> <C-]>

" map split to vsplit
nmap :split :vsplit
