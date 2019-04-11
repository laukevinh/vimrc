""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Kevin Lau - @laukevinh
" 
" Contents
" 
" >>> General
" >>> UI
" >>> Tabs
" >>> Netrw
" >>> Plugins using vim-plug


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"
" Resources http://learnvimscriptthehardway.stevelosh.com/
" Common key mappings :help key-notation
" Explanation of options :help option-list
"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI

" Line numbers see :help 'number' (note the quotes)
" set number
set relativenumber

" Colorscheme slate, torte, desert, ron 
colorscheme slate

" breakindent to wrap words
set breakindent

" Line wrap see :help wrap
set nowrap


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs

" Use spaces instead of tabs
set expandtab
" enter after { gives correct indent
set smartindent
" enter and } after body gives correct indent
set autoindent
" Backspace deletes 4 tab spaces
set smarttab
" default 1 tab is 4 spaces
set tabstop=4 shiftwidth=4
" set tabstop, softtabstop, and shiftwidth based on filetype
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType css setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Netrw
" see :help netrw
" absolute width of netrw window
" let g:netrw_winsize = -28
" tree-view
let g:netrw_liststyle = 3
" open file in a new tab
" let g:netrw_browse_split = 3
" split left automatically (default)
" let g:netrw_altv=0
" split right automatically
let g:netrw_altv=1
" split top automatically (default)
" let g:netrw_alto=0
" split bottom automatically
let g:netrw_alto=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/bundle')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/.vim/bundle/vim-javascript'

" Initialize plugin system
call plug#end()
