set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'shawncplus/phpcomplete.vim'
"Plugin 'klen/python-mode'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'mattn/emmet-vim'
"Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/syntastic'
Plugin 'myhere/vim-nodejs-complete'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" YCM settings
let g:ycm_key_list_select_completion = ['', '']
let g:ycm_key_list_previous_completion = ['']
let g:ycm_key_invoke_completion = '<C-Space>'

" UltiSnips setting
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


nmap <C-\> :TagbarToggle<CR>

syntax on
au BufRead,BufNewFile *.go set filetype=go
colorscheme molokai

set ai		" 自动缩进
set bs=2	" 在insert模式下用退格键删除
set showmatch	" 代码匹配
set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4
set tabstop=4
set number                  "显示行号
set hls                     "检索时高亮显示匹配项
set helplang=cn             "帮助系统设置为中文

" Highlight current line
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline cursorcolumn
"set cursorline cursorcolumn

" 设置 markdown 折叠关闭
let g:vim_markdown_folding_disabled=1

" NERD tree
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" " Automatically open a NERDTree if no files where specified
"autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open a NERDTree
map <C-n> :NERDTreeToggle<CR>

set bs=2 "在insert模式下用delete删除

"状态栏的配置 
""powerline{

set encoding=utf-8
set laststatus=2   " 总是显示状态栏
set guifont=Inconsolata\ for\ Powerline
set t_Co=256
let g:Powerline_symbols = 'fancy'
"set fillchars+=stl:\ ,stlnc:\
"}


"emmet-vim
" 使用ctrl+y+,
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
