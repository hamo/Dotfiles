"
"========================================================================================
"
"       Filename:   .vimrc
"
"    Description:   vim config file 
"
"        Version:    3.0
"        Created:    2008-8-22 15:52
"
"         Author:     Hamo Bai
"
"========================================================================================
"

set nocompatible   "关闭vi兼容模式

"""""""""""""""设置vim编码""""""""""""""""
set encoding=utf-8   "设置vim内部编码
set fileencoding=utf-8  "设置保存文件编码
set fileencodings=ucs-bom,utf-8,chinese,taiwan "设置打开文件编码

""""""""""""""""设置语言环境""""""""""""""
set helplang=en     "设置帮助文件语言
set langmenu=en_US.UTF-8    "设置菜单语言
language messages en_US.UTF-8    "设置消息语言

filetype on "检测文件类型
filetype plugin indent on   "装载插件和缩进类型
set autoindent  "打开自动缩进
set ruler    "打开状态栏标尺
set history=400 "保存400条命令行历史记录
set number  "打开行号显示
set mouse=a "鼠标支持
set showmatch "显示匹配括号
"set showcmd  "打开命令行显示
set matchtime=2  "匹配时间10ms
set autoread "外部更改，自动打开
"set autowrite  "自动保存
set autochdir  " 自动设置目录为正在编辑的文件所在的目录
set backspace=2   
set incsearch  "在输入搜索内容的同时进行搜索
set hlsearch  "开启搜索高亮
set noignorecase  "查找时大小写敏感
set clipboard+=unnamed  "与windows共享剪贴板

"关闭错误响声
set noerrorbells
set novisualbell
set t_vb=

set expandtab "转换tab为空格
set tabstop=4 "将tab转换为4个空格
set shiftwidth=4 "换行4个空格
set guioptions-=T "去掉toolbar
set wrap   "自动换行
"set spl=en spell  "开启拼写检查

set nobackup   "关闭备份
set noswapfile  

syntax enable
syntax on   "语法高亮

"""""""""Taglist设置""""""""""""""
let Tlist_Use_Right_Window=1  "将taglist放在右侧
let Tlist_File_Fold_Auto_Close=1 "将当前未编辑的文件的方法列表折叠
let Tlist_Exit_OnlyWindow=1 "如果taglist是最后一个窗口，则退出vim

""""""""设置leader"""""""""""
let mapleader = ","
let g:mapleader = ","

""""""""设置Netrw""""""""""""""
let g:netrw_winsize = 25
nmap <leader>fe :Sexplore!<cr>

if has("gui_running")
    colorscheme oceandeep
    set guifont=YaHei\ Consolas\ Hybrid   "设置字体
else
    set background=dark
    colorscheme desert
endif

