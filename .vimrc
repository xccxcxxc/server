set number      "设置行数
set suffixesadd:+=.py  "添加文件跳转的后缀
set fileencodings=utf-8,gbk   "设置文件编码方式
set incsearch    "搜索时预览第一项
set tabstop=4    "扩展 tab 键为4个空格
set shiftwidth=4 "表示每一级缩进均为4个空格
set expandtab   "用 space 代替 tab 
"set autoindent   "设置自动缩进
set showtabline=2 "总是显示 标签页

inoremap jk <ESC>  "修改esc键映射

"如果之前没有字符，tab 键保持不变，否则映射为补全
function! CleverTab()
   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
      return "\<Tab>"
   else
      return "\<C-N>"
   endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>

syntax on    "语法高亮

"colorscheme industry  "配色
