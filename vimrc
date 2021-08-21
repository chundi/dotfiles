" ====================== vundle ======================
set nocompatible

call plug#begin('~/.vim/plugged')

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'pernatiy/taglist.vim'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter'
Plug 'nsf/gocode', {'rtp': 'vim/'}
Plug 'ervandew/supertab'
Plug 'Yggdroot/LeaderF'
Plug 'w0rp/ale'
Plug 'davidhalter/jedi-vim'
Plug 'zxqfl/tabnine-vim'
Plug 'puremourning/vimspector'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()            " required
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
set path+=**
set wildmenu
set encoding=utf-8
"set cursorline
"set cursorcolumn
set autoindent
syntax on
filetype on
set fileencodings=ucs-bom,utf-8,gbk,gb2312,gb18030,default,latin1
" set guifont=Monaco:h9
set tabpagemax=30
" colorscheme solarized
" ====================== grupbox =======================
colorscheme gruvbox
" hi vertsplit ctermfg=238 ctermbg=235
" hi LineNr ctermfg=237
" hi StatusLine ctermfg=235 ctermbg=245
" hi StatusLineNC ctermfg=235 ctermbg=237
" hi Search ctermbg=58 ctermfg=15
hi Normal ctermbg=None
hi Default ctermfg=None ctermbg=None
hi clear SignColumn
hi SignColumn ctermbg=None
hi GitGutterAdd ctermbg=None ctermfg=None
hi GitGutterChange ctermbg=None ctermfg=None
hi GitGutterDelete ctermbg=None ctermfg=None
hi GitGutterChangeDelete ctermbg=None ctermfg=None
hi EndOfBuffer ctermfg=None ctermbg=None
" ====================== set transparent lines =========
hi TabLine ctermfg=None ctermbg=None
hi TabLineSel ctermfg=None ctermbg=None
hi clear TabLineFill
hi clear StatusLine
hi clear StatusLineNC
hi clear VertSplit

" ====================== status bar =====================
set statusline=%=\ %l\ %P\ %f\ %m
set fillchars=vert:\ ,stl:\ ,stlnc:\
set laststatus=2
"set noshowmode
hi statusline ctermbg=None

" ======================= 切换tab ========================
nmap gp gT
nmap gn gt

" ======================= air-line =======================
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '^V' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '^S' : 'S',
      \ }
set laststatus=2

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

" ========================== ale ==========================
"let g:syntastic_python_pylint_args='--disable=C0111,R0903,C0301'
"let g:ale_open_list = 1
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 1
let g:ale_sign_error = 'XX'
let g:ale_sign_warning = '!!'
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_echo_msg_format = '[%linter%] [%code%] %s [%severity%]'
let g:ale_python_pylint_options = '--disable=C0111,E1103,R0903,R0913'
"hi ALEError cterm=bold ctermbg=202
hi ALEErrorLine cterm=bold,underline
hi ALEErrorSign cterm=bold ctermbg=235 ctermfg=202
hi ALEWarningLine cterm=bold
hi ALEWarningSign cterm=bold ctermbg=235 ctermfg=220
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_linters = {
    \   'python': ['flake8', 'pylint'],
    \ }

" ======================= LeaderF =======================
command FF LeaderfFile

" ======================= jedi ==========================
let g:jedi#use_tabs_not_buffers = 1

