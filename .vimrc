syntax on
set background=dark
set shiftwidth=2
set tabstop=2

filetype indent on
filetype on

if has("autocmd")
	filetype plugin indent on
endif

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set incsearch           " Incremental search
set hidden              " Hide buffers when they are abandoned

" color github
color desert

"Bundle 'christoomey/vim-tmux-navigator'
"let $XIKI_DIR = "/home/suriya/src/xiki"
"source /home/suriya/src/xiki/etc/vim/xiki.vim

set backspace=indent,eol,start

" set highlight search
set hlsearch

" Vim Airline Config
set laststatus=2


" vim for nesc
augroup filetypedetect 
	au! BufRead,BufNewFile *nc setfiletype nc 
augroup END

au BufRead,BufNewFile *.text set ft=plaintex.tex

" Pathogen installation
execute pathogen#infect()

" ***** SUPER HUMAN MODE ******
" Custom Key binding for NERDTree and
"  Taglist setup
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 30
map <F5> :NERDTree<cr> :TlistToggle<cr> 

" Custom Key binding for save all, quit all
map <F11> :wa<cr><cr>
map <F12> :wa<cr> :qa<cr>

" Custom Key binding for autoindent
map <F10> G=gg :w<cr>

" Custom Key bind for >> Help on Custom key bindings
map <F9> :!tail -n20 ~/.vimrc<cr>


" map space to cycle through buffers
map <F4> :bn<cr>

" map < cntl+w +navig > to < cntl+navig >
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" format
" map <space> gg=G :w<cr>


" *****[Mappings]*****
"
" F12 => Save All + Quit All
"
" F11 => Save All
"
" F10 => Auto Indent + Save
"
" F9	=> This Help File
"
" F5	=> Super Human Mode
"
" F4	=> Iterate through buffers
" ************************


let fig="/home/suriya/.vim/custom_templates/figure.txt"
