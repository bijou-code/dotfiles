syntax on | " I like syntax highlighting, how about you?
color desert | " stylish, too
set wildmenu | " shows tabbable options in a line above the command prompt
set number | " display line numbers
set hlsearch | " marks what you searched for. Temporarily unhighlight with ':nohl'
set ignorecase | " abbreviated 'ic', this makes searches case-insensitive. Can use \C to perform case-sensitive search while active, or insensitive with \c
set smartcase | " when ignorecase is set, this will perform case-sensitive searches if you use caps

" options for file folding
set foldmethod=indent | " this prompts vim to auto-create folds based on indentation
set foldlevel=2 | " sets the default fold level to 2
set foldnestmax=10 | " prevent endless folds
set nofoldenable | " makes folds hidden to start

" options for indentation
filetype plugin indent on | " enables smart indentation. Disable for pasting with ':set paste' and reenable with ':set nopaste'. May add ':set pastetoggle=<F3>' option later
set tabstop=2 | " when showing existing tab characters, use 2 spaces
set shiftwidth=2 | " when indenting with '>', use 2 spaces
set expandtab | " when tab is pressed, insert spaces

set backspace=indent,eol,nostop | " allow backspacing past the start of the current insert

" leader change
let mapleader = ","
noremap <leader>w :w<cr>
noremap <leader>r :source  ~/.vimrc<cr>
noremap <leader>v :vs<cr>

" Easier pane switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
