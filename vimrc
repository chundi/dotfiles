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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'pernatiy/taglist.vim'
" Plug 'tpope/vim-fugitive'
" Plug 'airblade/vim-gitgutter'
Plug 'nsf/gocode', {'rtp': 'vim/'}
Plug 'ervandew/supertab'
Plug 'Yggdroot/LeaderF'
Plug 'w0rp/ale'
Plug 'davidhalter/jedi-vim'
Plug 'zxqfl/tabnine-vim'
Plug 'puremourning/vimspector'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jayli/vim-easydebugger'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'

call plug#end()            " required
filetype plugin indent on    " required

" ====================== normal config ===================
" set ts=4
" set sw=4
" set sts=4
" set bs=2
set expandtab
set nu
set t_Co=256
" set background=dark
set background=light
set hlsearch
set path+=**
set wildmenu
set encoding=utf-8
set cursorline
" set cursorcolumn
set autoindent
" set foldenable
" set foldmethod=indent
syntax on
filetype plugin indent on
set fileencodings=ucs-bom,utf-8,gbk,gb2312,gb18030,default,latin1
" set guifont=Monaco:h9
set tabpagemax=30
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
" set signcolumn=yes
" set updatetime=250

" ======================= supertab ========================
let g:SuperTabDefaultCompletionType = "<c-n>"

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
hi ALEErrorSign cterm=bold ctermbg=237 ctermfg=202
hi ALEWarningLine cterm=bold
hi ALEWarningSign cterm=bold ctermbg=237 ctermfg=220
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_linters = {
    \   'python': ['flake8', 'pylint'],
    \ }

" ======================= LeaderF =======================
command FF LeaderfFile

" ======================= jedi ==========================
let g:jedi#use_tabs_not_buffers = 1 

" =============== Vim-EasyDebugger ==================
" Vim-EasyDebugger 快捷键配置
" 启动 NodeJS/Python/Go 调试
" Shift-R ：启动 VIM 调试器
nmap <S-R>    <Plug>EasyDebuggerInspect
" 启动 NodeJS 的 Web 调试模式
" Shift-W ：启动 Chrome DevTools 调试服务（仅支持NodeJS）
nmap <S-W>    <Plug>EasyDebuggerWebInspect
" 关闭调试
" Shift-E ：关闭 VIM 调试器
nmap <S-E>    <Plug>EasyDebuggerExit
" 暂停程序
" F6 ：暂停执行，pause
nmap <F6>    <Plug>EasyDebuggerPause
tmap <F6>    <Plug>EasyDebuggerPause
" 跳出函数
" F7 ：跳出函数，Python 中为up命令
nmap <F7>    <Plug>EasyDebuggerStepOut
tmap <F7>    <Plug>EasyDebuggerStepOut
" 进入函数
" F8 ：单步进入，stepin
nmap <F8>   <Plug>EasyDebuggerStepIn
tmap <F8>   <Plug>EasyDebuggerStepIn
" 单步执行
" F9 ：单步执行，next
nmap <F9>    <Plug>EasyDebuggerNext
tmap <F9>    <Plug>EasyDebuggerNext
" Continue
" F10 ：继续执行，continue
nmap <F10>    <Plug>EasyDebuggerContinue
tmap <F10>    <Plug>EasyDebuggerContinue
" 设置断点
" F12 ：给当前行设置/取消断点，break
nmap <F12>    <Plug>EasyDebuggerSetBreakPoint

" ======================= autocmd ======================
autocmd FileType python set sw=4 ts=4 sts=4 bs=2
autocmd FileType java set sw=4 ts=4 sts=4 bs=2
autocmd FileType javascript set sw=2 ts=2 sts=2 bs=2
set backspace=2

