" ====================== vundle ======================
filetype off
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'pernatiy/taglist.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'morhetz/gruvbox'
Plugin 'airblade/vim-gitgutter'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'ervandew/supertab'

call vundle#end()            " required
filetype plugin indent on    " required

" ====================== normal config ===================
set ts=4
set sw=4
set sts=4
set bs=2
set expandtab
set nu
set t_Co=256
set background=dark
set hlsearch
"set cursorline
"set cursorcolumn
set autoindent
syntax on
filetype on
set fileencodings=ucs-bom,utf-8,gbk,gb2312,gb18030,default,latin1
set guifont=Monaco:h9
set tabpagemax=30
"colorscheme solarized
" ====================== grupbox =======================
colorscheme gruvbox
hi vertsplit ctermfg=238 ctermbg=235
hi LineNr ctermfg=237
hi StatusLine ctermfg=235 ctermbg=245
hi StatusLineNC ctermfg=235 ctermbg=237
hi Search ctermbg=58 ctermfg=15
hi Default ctermfg=1
hi clear SignColumn
hi SignColumn ctermbg=235
hi GitGutterAdd ctermbg=235 ctermfg=245
hi GitGutterChange ctermbg=235 ctermfg=245
hi GitGutterDelete ctermbg=235 ctermfg=245
hi GitGutterChangeDelete ctermbg=235 ctermfg=245
hi EndOfBuffer ctermfg=237 ctermbg=235
" ====================== set transparent lines =========
"hi TabLine ctermfg=None ctermbg=None
"hi TabLineSel ctermfg=None ctermbg=None
"hi clear TabLineFill
"hi clear StatusLine
"hi clear StatusLineNC
"hi clear VertSplit

" ====================== status bar =====================
set statusline=%=\ %l\ %P\ %f\ %m
set fillchars=vert:\ ,stl:\ ,stlnc:\ 
set laststatus=2
"set noshowmode
"hi statusline ctermbg=None

" ======================= 切换tab ========================
nmap gp gT
nmap gn gt

" ======================= air-line =======================
"let g:airline#extensions#tabline#enabled = 1
""let g:airline_theme='badwolf'
"let g:airline_theme='gruvbox'
"let g:airline_powerline_fonts = 1
"let g:airline_mode_map = {
"      \ '__' : '-',
"      \ 'n'  : 'N',
"      \ 'i'  : 'I',
"      \ 'R'  : 'R',
"      \ 'c'  : 'C',
"      \ 'v'  : 'V',
"      \ 'V'  : 'V',
"      \ '^V' : 'V',
"      \ 's'  : 'S',
"      \ 'S'  : 'S',
"      \ '^S' : 'S',
"      \ }
"set laststatus=2

" ======================= nerdtree =======================
map <silent><F7> :NERDTreeToggle<cr>"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeChDirMode=2
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=0

" ======================= taglist ========================
map <silent><F8> :TlistToggle<cr>"
let Tlist_Show_One_File = 1     " 不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1   " 最后只剩下taglist窗口时，直接退出vim
let Tlist_Use_Right_Window = 1  " 右侧窗口显示taglist
let Tlist_Enable_Fold_Column = 0
hi clear MyTagListFileName
hi clear MyTagListTagScope

" ======================= gitgutter ========================
set signcolumn=yes
set updatetime=250

" ======================= supertab ========================
let g:SuperTabDefaultCompletionType = 'context'

