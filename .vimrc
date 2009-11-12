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

set nocompatible   "�ر�vi����ģʽ

"""""""""""""""����vim����""""""""""""""""
set encoding=utf-8   "����vim�ڲ�����
set fileencoding=utf-8  "���ñ����ļ�����
set fileencodings=ucs-bom,utf-8,chinese,taiwan "���ô��ļ�����

""""""""""""""""�������Ի���""""""""""""""
set helplang=en     "���ð����ļ�����
set langmenu=en_US.UTF-8    "���ò˵�����
language messages en_US.UTF-8    "������Ϣ����

filetype on "����ļ�����
filetype plugin indent on   "װ�ز������������
set autoindent  "���Զ�����
set ruler    "��״̬�����
set history=400 "����400����������ʷ��¼
set number  "���к���ʾ
set mouse=a "���֧��
set showmatch "��ʾƥ������
"set showcmd  "����������ʾ
set matchtime=2  "ƥ��ʱ��10ms
set autoread "�ⲿ���ģ��Զ���
"set autowrite  "�Զ�����
set autochdir  " �Զ�����Ŀ¼Ϊ���ڱ༭���ļ����ڵ�Ŀ¼
set backspace=2   
set incsearch  "�������������ݵ�ͬʱ��������
set hlsearch  "������������
set noignorecase  "����ʱ��Сд����
set clipboard+=unnamed  "��windows���������

"�رմ�������
set noerrorbells
set novisualbell
set t_vb=

set expandtab "ת��tabΪ�ո�
set tabstop=4 "��tabת��Ϊ4���ո�
set shiftwidth=4 "����4���ո�
set guioptions-=T "ȥ��toolbar
set wrap   "�Զ�����
"set spl=en spell  "����ƴд���

set nobackup   "�رձ���
set noswapfile  

syntax enable
syntax on   "�﷨����

"""""""""Taglist����""""""""""""""
let Tlist_Use_Right_Window=1  "��taglist�����Ҳ�
let Tlist_File_Fold_Auto_Close=1 "����ǰδ�༭���ļ��ķ����б��۵�
let Tlist_Exit_OnlyWindow=1 "���taglist�����һ�����ڣ����˳�vim

""""""""����leader"""""""""""
let mapleader = ","
let g:mapleader = ","

""""""""����Netrw""""""""""""""
let g:netrw_winsize = 25
nmap <leader>fe :Sexplore!<cr>

if has("gui_running")
    colorscheme oceandeep
    set guifont=YaHei\ Consolas\ Hybrid   "��������
else
    set background=dark
    colorscheme desert
endif

