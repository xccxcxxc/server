"文件编码类
set encoding=utf-8     "编码
set termencoding=utf-8    "终端编码显示方式
set fileencodings=utf-8,gbk   "文件读取编码方式
set fileencoding=utf-8      "文件保存编码方式

set incsearch    "搜索时预览第一项

"文件缩进
set tabstop=4    "扩展 tab 键为4个空格
set shiftwidth=4 "表示每一级缩进均为4个空格
set expandtab   "用 space 代替 tab 
set autoindent   "设置自动缩进

"显示设置
set number      "设置行数
colorscheme desert  "配色
set showtabline=2 "总是显示 标签页
syntax on    "语法高亮

"编程插件跳转...
set suffixesadd:+=.py  "添加文件跳转的后缀


"修改esc键映射
inoremap jk <ESC>  


"如果之前没有字符，tab 键保持不变，否则映射为补全
function! CleverTab()
   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
      return "\<Tab>"
   else
      return "\<C-N>"
   endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>


