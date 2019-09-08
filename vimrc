set nocompatible              " be iMproved, required
syntax on
set backspace=indent,eol,start
filetype off                  " required
filetype plugin indent on     " required
set nocompatible " 关闭 vi 兼容模式
set smartindent " 开启新行时使用智能自动缩进
set number " 显示行号
set cursorline " 突出显示当前行
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set expandtab
set incsearch " 输入搜索内容时就显示搜索结果
set hlsearch " 搜索时高亮显示被找到的文本
set showmatch " 插入括号时，短暂地跳转到匹配的对应括号
set showcmd " 在状态栏显示正在输入的命令
imap <C-w> <Esc>:w<CR>i
filetype plugin indent on "依文件类型设置自动缩进
set smarttab "开启时，在行首按TAB将加入shiftwidth个空格，否则加入tabstop个空格
nnoremap <silent> [b :bprevious<CR>
nnoremap <F2> :set nonumber!<CR>
nnoremap <F3> :w<CR>:!clear<CR>:!clear&&python %<CR>
imap <F4> <Esc>:w<CR>i
nnoremap <F5> :source ~/.vimrc<CR>
nnoremap <F6> :w<CR>:!python %<CR>
nnoremap <F7> :w<CR>:!g++ % -o %<<CR>:!./%<<CR>
nnoremap <F8> :NERDTree<CR>
nnoremap <F9> :w<CR>:!make clean<CR><CR>:!make<CR>
nnoremap <F10> :w<CR>:!./%<<CR>
set mouse=a
cnoremap <expr> %% getcmdtype( ) == ':' ? expand('%:h').'/' : '%%'
inoremap <C-v> <Esc>:set paste!<CR>i<C-r>+<Esc>:set paste!<CR>i
setlocal makeprg=python\ %
filetype plugin indent on " 开启插件

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set foldmethod=indent
set foldlevel=99
set autochdir
set tags=tags;
