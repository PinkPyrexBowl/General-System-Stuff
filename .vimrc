set number
set relativenumber
set nowrap
set nocompatible
filetype on
syntax on
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set ignorecase
set showcmd
set wildmenu
set wildmode=list:longest
set clipboard=unnamedplus

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ %l\ ,\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

highlight clear StatusLine

