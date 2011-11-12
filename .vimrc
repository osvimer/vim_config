""" author: fukai
""" email:  fukai@baidu.com
""" date: 2011-09-27
""" ver: 1.0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 一般设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设定默认解码

set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936,big5
set enc=utf-8
let &termencoding=&encoding


" 不要使用vi的键盘模式，而是vim自己的
set nocompatible

" history文件中需要记录的行数
set history=100

" 显示行号
set number

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 与windows共享剪贴板
set clipboard+=unnamed

" 侦测文件类型
filetype on

"gvim字体设置
set guifont=Monaco\ 12
":set guifont=Courier\ 10\ Pitch\ 12
":set guifont=bluegreen\ 12
":set guifont=breeze\ 12

"gvim主题设置
":colorscheme darkblue2
"colorscheme bluegreen


"取消光标闪烁
set gcr=a:block-blinkon0
"set gcr=a:block-blinkon0

" 载入文件类型插件
filetype plugin on

"折叠，默认折叠方式按缩进折叠
:nnoremap <space> za
"set foldmethod=indent

" 为特定文件类型载入相关缩进文件
filetype indent on

" 保存全局变量
set viminfo+=!

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" 语法高亮
syntax on

" 每次切换缓冲时，自动保存
set autowrite


" CTRL_J CTRL_K 时保存文件
nmap <c-j> :wa<CR>
"nmap <c-s> :w<CR>
imap <c-k> <esc>:wa<CR>a

"imap <c-x> :sh<CR>
"nmap
" 高亮字符，让其不受100列限制
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
:match OverLength '\%101v.*'

" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White
"highlight Corsur guifg=Gray guibg=White

" xterm 设置
":colorscheme ron
colorscheme breeze
"colorscheme dawn
"if &term=="xterm"
    "set t_Co=8
    "set t_Sb=^[[4%dm
    "set t_Sf=^[[3%dm

	":silent !echo -ne "\e]12;IndianRed2\007"
	"let &t_SI=\e]12;RoyalBlue1\007"
	"let &t_EI=\e]12;IndianRed2\007"
	"autocmd VimLeave * :!echo -ne "\e]12;green\007"


	":silent !echo -ne "\e]12;IndianRed2\007"
    "let &t_SI = "\e]12;RoyalRed1\007"
    "let &t_EI = "\e]12;IndianRed2\007"
    "autocmd VimLeave * :!echo -ne "\e]12;green\007"
"endi

"dynamic cursor color for xterm \033=>\e  007=>\a (BEL)
"if &term =~ "xterm"
"endif

"保存文件
"imap <C-s> <esc>:w<cr>a
"map <C-s> :w<cr>
":noremap <C-s> :w<cr>
":inoremap <C-s> <esc>:w<cr>a
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 要备份文件（根据自己需要取舍）
" set backup

" 不要生成swap文件，当buffer被丢弃的时候隐藏它
"setlocal noswapfile
"et bufhidden=hide
"set dir=~/.vim/tmp

" 字符间插入的像素行数目
set linespace=0

" 增强模式中的命令行自动完成操作
set wildmenu

" 在状态行上显示光标所在位置的行号和列号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=1

" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2

" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 不让vim发出讨厌的滴滴声
set noerrorbells
if has('autocmd')
    autocmd GUIEnter * set vb t_vb=
endif
"No bell settings End }}}


"在屏幕最后一行显示 (部分的) 命令
set showcmd

"在每个tab上显示编号
set guitablabel=%{tabpagenr()}.%t\ %m

set autoread                " 自动重新加载外部修改内容
set autochdir               " 自动切换当前目录为当前文件所在的目录

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5

" 在搜索的时候忽略大小写
set ignorecase

" 不要高亮被搜索的句子（phrases）
set nohlsearch

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch

" 输入:set list命令是应该显示些啥？
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$

" 光标移动到buffer的顶部和底部时保持10行距离
set scrolloff=10

" 不要闪烁
set novisualbell

" 我的状态行显示的内容（包括文件类型和解码）
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

"set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set statusline=[%{&ff}]\ [%Y]\ [%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]\ %F%m%r%h%w

" 总是显示状态行
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"缩进相关

" ambiwidth 默认值为 single。在其值为 single 时，
" 若 encoding 为 utf-8，gvim 显示全角符号时就会
" 出问题，会当作半角显示。
set ambiwidth=double

function! GnuIndent()
   " setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
    setlocal shiftwidth=2
    setlocal tabstop=4
endfunction

function! MyIndent()
    setlocal cinoptions=:0,g0,(0,w1,t0
    setlocal shiftwidth=8
    setlocal tabstop=8
    setlocal softtabstop=8
    setlocal smartindent
endfunction

au FileType c,cpp call MyIndent()
au FileType diff  setlocal shiftwidth=4 tabstop=4
au FileType html,htm  setlocal autoindent indentexpr= shiftwidth=2 tabstop=2
au FileType html,htm let g:html_indent_script1 = "inc"
au FileType html,htm let g:html_indent_style1 = "inc"
au FileType changelog setlocal textwidth=76
" au FileType text setlocal spell spelllang=en_us



" Recognize standard C++ headers
au BufEnter /usr/include/c++/*    setf cpp
au BufEnter /usr/include/qt/*	setf cpp
au BufEnter /usr/include/qwt/*	setf cpp
au BufEnter ~/tags/stl/* setf cpp
au BufEnter *.cpp setf cpp
au BufEnter *.cxx setf cpp
au BufEnter *.hpp setf cpp
au BufEnter *.c++ setf cpp
au BufEnter *.cc setf cpp
au BufEnter *.h setf cpp
au BufEnter *.c setf c
au BufEnter *.tex setf tex


function! RemoveTrailingSpace()
    if $VIM_HATE_SPACE_ERRORS != '0' &&
                \(&filetype == 'c' || &filetype == 'cpp' || &filetype == 'vim')
        normal m`
        silent! :%s/\s\+$//e
        normal ``
   endif
endfunction
" Remove trailing spaces for C/C++ and Vim files
au BufWritePre *                  call RemoveTrailingSpace()

" 自动格式化
set formatoptions=tcrqn

" 继承前一行的缩进方式，特别适用于多行注释
set autoindent

" 为C程序提供自动缩进
set smartindent

" 使用C样式的缩进
set cindent

" 制表符为4
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

" 要用空格代替制表符
set noexpandtab
"set expandtab

" 自动折行
set wrap
:set sidescroll=5
:set listchars+=precedes:<,extends:>

" 满 80 个字符自动折行
" 需要编译支持
"set tw=70
"set fo+=Mm

" 文本宽度
"set textwidth=80

" 在行和段开始处使用制表符
set smarttab


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 只在下列文件类型被侦测到的时候显示行号，普通文本文件不显示

if has("autocmd")
    autocmd FileType xml,html,c,cs,java,perl,shell,bash,cpp,python,vim,php,ruby set number
	autocmd FileType xml,html vmap <C-o> <ESC>'<i<!--<ESC>o<ESC>'>-->
    autocmd FileType java,c,cpp,cs vmap <C-o> <ESC>'<o/*<ESC>'>*/
    autocmd FileType c,cpp,cs source ~/.vim/cpp/project.vim
    autocmd BufEnter *.tex source ~/.vim/tex/project.vim
    "autocmd FileType html,text,php,vim,c,java,xml,bash,shell,perl,python setlocal textwidth=76
    autocmd Filetype html,xml,xsl source ~/.vim/plugin/closetag.vim
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif
endif " has("autocmd")

" 能够漂亮地显示.NFO文件
set encoding=utf-8
function! SetFileEncodings(encodings)
    let b:myfileencodingsbak=&fileencodings
    let &fileencodings=a:encodings
endfunction
function! RestoreFileEncodings()
    let &fileencodings=b:myfileencodingsbak
    unlet b:myfileencodingsbak
endfunction

au BufReadPre *.nfo call SetFileEncodings('cp437')|set ambiwidth=single
au BufReadPost *.nfo call RestoreFileEncodings()

" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt



"Gui action mapping
nnoremap <F7> :set guioptions+=m<CR>
nnoremap <C-F7> :set guioptions-=m<CR>

"字典完成
set  dictionary+=/usr/share/dict/words

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Keybinding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 双反斜杠\\即可打开bufexplorer
map <leader><leader> \be
nnoremap <F4> :setlocal spell spelllang=en_us<CR>
"nnoremap <silent> <F4> :tabprevious<CR>
nnoremap <silent> <leader>t :!tag.sh<CR><CR>
:set cscopequickfix=s-,c-,d-,i-,t-,e-
nnoremap <silent> <F3> :Grep<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""
"" 怎样才能把它弄得跟 eclipse 一样智能呢？一路回车
"" 就可以跳出括号

:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
au FileType c,cpp,java inoremap { { <ESC>i
au FileType c,cpp,java inoremap { {<RETURN>}<ESC>ko
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap < <><ESC>i
":inoremap > <c-r>=ClosePair('>')<CR>

function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

" mapping
" 如果下拉菜单弹出，回车映射为接受当前所选项目，否则，仍映射为回车；
"
" 如果下拉菜单弹出，CTRL-J映射为在下拉菜单中向下翻页。否则映射为CTRL-X CTRL-O；
"
" 如果下拉菜单弹出，CTRL-K映射为在下拉菜单中向上翻页，否则仍映射为CTRL-K；
"
" 如果下拉菜单弹出，CTRL-U映射为CTRL-E，即停止补全，否则，仍映射为CTRL-U；
"inoremap <expr> <CR>       pumvisible()?"\<C-Y>":"\<CR>"
:inoremap <expr> <C-J>      pumvisible()?"\<PageDown>\<C-N>\<C-P>":"\<C-X><C-O>"
:inoremap <expr> <C-K>      pumvisible()?"\<PageUp>\<C-P>\<C-N>":"\<C-K>"
"
:inoremap <expr> <C-U>      pumvisible()?"\<C-E>":"\<C-U>"a

"在有弹出菜单的情况下
:inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>"
:inoremap <expr> <c-n> pumvisible() ? "\<lt>c-n>" : "\<lt>c-n>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>"
:inoremap <expr> <m-;> pumvisible() ? "\<lt>c-n>" : "\<lt>c-x>\<lt>c-o>\<lt>c-n>\<lt>c-p>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>"

"加上日期 对应F2
:map <F2> <ESC>gg:read !date +\%F<CR>

"选中一段文字并全文搜索这段文字
:vnoremap <silent> ,/ y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
:vnoremap <silent> ,? y?<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
"查找选中文本
"vnoremap <c-s> "zy/<c-r>=substitute(escape(@z,'[]*.\\/'),'\n', '\\n', 'g')<cr><cr><cr>

"Super paste
inoremap <C-v> <esc>:set paste<cr>mui<C-R>+<esc>mv'uV'v=:set nopaste<cr>

let g:bufExplorerSortBy = "name"
"""""""""""""""""""""""""""""""""""""""""
"TextMate-Like
"""""""""""""""""""""""""""""""""""""""""
set runtimepath+=~/.vim/textmateOnly/
set runtimepath+=~/.vim/textmateOnly/after/
"""""""""""""""""""""""""""""""""""""""""

""使用模板, 新建或打开空文件时自动调用模板
"autocmd FileType perl
"         \ if 1 == line('$') && empty(getline(1)) |
"         \   if has('gui_running')      |
"         \      0r D:/xxxxx/templates\pl.pl |
"         \   else            |
"         \      0r /xxxxx/templates/pl.pl |
"         \   endif   |
"         \   normal G |
"         \ endif
autocmd BufEnter *.tex
         \ if 1 == line('$') && empty(getline(1)) |
         \   if has('gui_running')      |
         \      0r ~/.vim/tex/xetex.template |
         \   else            |
         \      0r ~/.vim/tex/xetex.template |
         \   endif   |
         \   normal G |
         \ endif

autocmd BufEnter resume.tex
         \ if 1 == line('$') && empty(getline(1)) |
         \   if has('gui_running')      |
         \      0r ~/.vim/tex/resume.tex |
         \   else            |
         \      0r ~/.vim/tex/resume.tex |
         \   endif   |
         \   normal G |
         \ endif
"查找包含符合特定模式的字符串的行数
function! MyCountMatchLine(MyRegMatch) range
   let matchCount = 0
   for LineNum in range(a:firstline,a:lastline)
      let LineContent = getline(LineNum)
      if LineContent =~ a:MyRegMatch
         let matchCount += 1
      endif
   endfor
   echo matchCount
endfunction

"查找符合特定模式的字符串的个数
function! MyCountPattern(MyRegMatch) range
   let matchCount = 0
   for LineNum in range(a:firstline,a:lastline)
      let LineContent = getline(LineNum)
      let MyLineTmp = substitute(LineContent, a:MyRegMatch, '', 'g')
      let matchCount -= strlen(substitute(MyLineTmp, "[^@]", '', 'g'))
      let MyLineTmp = substitute(LineContent, a:MyRegMatch, '@', 'g')
      let matchCount += strlen(substitute(MyLineTmp, "[^@]", '', 'g'))
   endfor
   echomsg matchCount
endfunction

" nerd tree
nmap    <leader>e   :NERDTreeToggle<CR>

" paste
set pastetoggle=<leader>p


"vim wiki viki
" Viki
autocmd! BufRead,BufNewFile *.viki set filetype=viki

" Typing the following (in insert mode):
"   os.lis<Ctrl-n>
" will expand to:
"   os.listdir(
" Python 自动补全功能，用 Ctrl-N 调用
"if has("autocmd")
"autocmd filetype python set complete+=k~/.vim/pydiction/pydiction isk+=.,
"autocmd filetype python map <buffer> K :execute "!pydoc " . expand("<cword>")<CR>
autocmd FileType python set omnifunc=pythoncomplete#Complete
	"autocmd filetype python set tags+=/home/kos/tags/PYSMELLTAGS.django
	"autocmd filetype python set omnifunc=pysmell#Complete
	"autocmd FileType python set omnifunc=pythoncomplete#Complete
"endif


"模板


"模板
"autocmd BufNewFile *.cal read $HOME/.vim/template/calendar_morning_diary.tpl | normal ggdd

"text 文本
let tlist_txt_settings = 'txt;c:content;f:figures;t:tables'
au BufRead,BufNewFile *.txt setlocal ft=txt
au BufRead,BufRead *.t2t set ft=txt2tags
:nmap <silent> <F8> <ESC>:Tlist<RETURN>
:noremap <silent> <F5> <ESC>:TlistUpdate<RETURN>


"目录列表 映射到了 \e
:nmap <silent> <F9> <ESC>:NERDTreeToggle<RETURN>

" MAKE IT EASY TO UPDATE/RELOAD _vimrc
:nmap ,s :source $HOME/.vimrc
:nmap ,v :e $HOME/.vimrc


" make 设定，vim 的 quickfix 模式
autocmd FileType c,cpp  map <buffer> <leader><space> :w<cr>:make -j13<cr><cr> :cw<cr>
"autocmd FileType c,cpp  map <buffer> <leader><m> :w<cr>:make<cr><cr> :cw<cr>
nmap <leader>cn :cn<cr>
nmap <leader>cp :cp<cr>
nmap <leader>cw :cw 10<cr>

