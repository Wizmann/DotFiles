syntax on                   " 自动语法高亮
set t_Co=256
set ffs=unix,dos

set background=dark
let g:molokai_original = 1

set et
set nocompatible            " 关闭 vi 兼容模式
set number                  " 显示行号
set ruler                   " 打开状态栏标尺
set tabstop=4
set shiftwidth=4
set softtabstop=4

set fileencodings=utf-8,gb18030,default

set ignorecase
set incsearch               " 输入搜索内容时就显示搜索结果
set hlsearch                " 搜索时高亮显示被找到的文本

set smartindent
set autoindent
set expandtab
set backspace=indent,eol,start

set showmatch
set showmode
set wildmenu
set wildmode=longest:full,full

set list
set cul          "高亮光标所在行
set cuc

set ruler           " 显示标尺
set showcmd         " 输入的命令显示出来，看的清楚
autocmd InsertLeave * se nocul  " 用浅色高亮当前行
autocmd InsertEnter * se cul    " 用浅色高亮当前行

let NERDTreeDirArrows = 0
map <C-p> :NERDTreeToggle<CR>

set nocompatible
filetype off

set shell=/bin/bash
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'The-NERD-Tree'
Plugin 'vim-scripts/a.vim'
Plugin 'mileszs/ack.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tell-k/vim-autopep8'
Plugin 'wizmann/monokai'
Plugin 'OrangeT/vim-csharp'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ConradIrwin/vim-bracketed-paste'

call vundle#end()

filetype plugin indent on

" copy to buffer
noremap ;y :w! ~/.vimbuffer<CR>
" " paste from buffer
noremap ;p :r ~/.vimbuffer<CR>


let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

