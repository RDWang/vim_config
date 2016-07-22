"配置系统参数
set nocompatible          "不要兼容vi
filetype off              "必须的设置：

set fileencodings=utf-8,gb2312 "cp936,ucs-bom
set termencoding=utf-8
set fileencoding=utf-8
set ts=4 "TAB宽度
set sw=4 "自动缩进尺寸
set expandtab "空格代替TAB缩进
set nu "显示行号
set mouse=a                  " 启用鼠标
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 查找book时，当输入/b时会自动找到
set hlsearch                 " 开启高亮显示结果
set incsearch                " 开启实时搜索功能
"set nowrapscan               " 搜索到文件两端时不重新搜索
set nocompatible             " 关闭兼容模式
set vb t_vb=                 " 关闭提示音
set cursorline              " 突出显示当前行
set list                     " 显示Tab符，使用一高亮竖线代替
set listchars=tab:\|\
set laststatus=2

"================================================================
"安装及配置插件

"设置源文件和头文件切换快捷键
nmap <silent> <Leader>aa :A<CR>
nmap <silent> <Leader>as :AS<CR>
nmap <silent> <Leader>av :AV<CR>
nmap <silent> <Leader>at :AT<CR>
nmap <silent> <Leader>an :AN<CR>
nmap <silent> <Leader>aih :IH<CR>
nmap <silent> <Leader>aihs :IHS<CR>
nmap <silent> <Leader>aihv :IHV<CR>
nmap <silent> <Leader>aiht :IHT<CR>
nmap <silent> <Leader>aihv :IHN<CR>

"使用Man手册
runtime ftplugin/man.vim

"重新映射C-CRefV快捷键
map <silent> <Leader>ccc <Plug>CRV_CRefVimInvoke

"Tlist设置
let Tlist_Use_LEFT_Window=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_One_File=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Auto_Open=1

"设置DirDiff忽略文件
let g:DirDiffExcludes = "CVS,*.class,*.o,.git/,build/"

"cscope设置
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

set cscopequickfix=s-,c-,d-,i-,t-,e-
set nocp
set nocscopeverbose

"Vundle Settings {
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
"Bundle "multvals.vim"
"Bundle "genutils"
"Bundle "linuxmag.vim"
"Bundle "project.vim"
Bundle "project.tar.gz"
    let g:proj_flags="gsvim"
    let g:proj_run1="echo '%f/%h/%r'"
    nmap <silent> <Leader>P :Project<CR>
"Bundle "IComplete"
"Bundle "SearchComplete"
"Bundle "MultipleSearch2.vim"
"Bundle "TabBar"
Bundle "taglist.vim"
"Bundle "myprojects"
"Bundle "Acpp"
Bundle "a.vim"
Bundle "CCTree"
Bundle "CRefVim"
Bundle "c.vim"
"Bundle "FastGrep"
"Bundle "EasyGrep"
"Bundle "greputils"
"Bundle "notes.vim"
"Bundle "Notes"
"Bundle "genutils"
Bundle "VimFootnotes"
"Bundle "VimNotes"
Bundle "winmanager"
"Bundle "Doxygen-via-Doxygen"
Bundle "doxygen-support.vim"
"    let g:Doxy_GlobalTemplateFile = '~/.vim/bundle/doxygen-support.vim/doxygen-support/templates/doxygen.templates'
Bundle "DoxyGen-Syntax"
Bundle "DirDiff.vim"
    let g:DirDiffExcludes = "CVS,*.class,*.o"
    let g:DirDiffIgnore = "Id:"
    " ignore white space in diff
    let g:DirDiffAddArgs = "-w" 
    let g:DirDiffEnableMappings = 1
"Bundle "Lookup"
Bundle "minibufexpl.vim"
    "MiniBuff设置
    let g:miniBufExplMapWindowNavVim = 1   
    let g:miniBufExplMapWindowNavArrows = 1   
    let g:miniBufExplMapCTabSwitchBufs = 1   
    let g:miniBufExplModSelTarget = 1  
    let g:miniBufExplMoreThanOne = 0
Bundle "git.zip"
Bundle "fugitive.vim"
"Bundle "Cppcheck-compiler"
"Bundle "cscope_win"
"Bundle "cscope_quickfix"
"Bundle "vimargumentchec"
"Bundle "checklist.vim"
"Bundle "gdb4vim"
"Bundle "vtimer.vim"
Bundle "neocomplcache-snippets_complete"
"Bundle "vim_movement"
"Bundle "editorconfig-vim"
"Bundle "Vim-Support"
Bundle "vimwiki"
    let g:vimwiki_use_mouse=1
    let g:vimwiki_use_calendar=1
    let vimwiki_path=$HOME.'/wiki/vimwiki'
    let vimwiki_html_path=$HOME.'/wiki/vimwiki_html'
    let g:vimwiki_list =[{'path':vimwiki_path,
                        \ 'path_html':vimwiki_html_path,
                        \ 'template_path':vimwiki_html_path.'assets',
                        \ 'template_default':'default',
                        \ 'template_ext': '.tpl',
                        \ 'auto_export': 0},
                        \{'path':$HOME.'/wiki/mywiki',
                        \ 'path_html':$HOME.'/wiki/mywiki_html'}]
    "设置calendar相关
    let g:calendar_focus_today = 1

Bundle "Syntastic"
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 0
    let g:syntastic_check_on_wq = 1
    let g:syntastic_aggregate_errors = 1
    let g:syntastic_id_checkers = 1
    let g:syntastic_loc_list_height = 5
    let g:syntastic_c_checkers = ["cppcheck", "splint"]
    let g:syntastic_c_cppcheck_exe = "cppcheck"
    let g:syntastic_c_cppcheck_args = "--enable=all -q"
"    let g:syntastic_debug = 1

    nmap <silent> <Leader>SW :SyntasticToggleMode<CR>

Bundle 'The-NERD-tree'
  "设置相对行号
  nmap <leader>nt :NERDTree<cr>:set rnu<cr>
  let NERDTreeShowBookmarks=1
  let NERDTreeShowFiles=1
  let NERDTreeShowHidden=1
  let NERDTreeIgnore=['\.$','\~$']
  let NERDTreeShowLineNumbers=1
  let NERDTreeWinPos=1

Bundle 'The-NERD-Commenter'
  let NERDShutUp=1
  "支持单行和多行的选择，//格式
  map <c-h> ,c<space>
"Bundle 'youdao.dict'
"Bundle "Dictionary"
Bundle 'autopreview'
    let g:AutoPreview_enabled=1
    let g:AutoPreview_allowed_filetypes=["c","cpp","java"]
    set updatetime=50 

"定义python使用的相关插件
Bundle "pydoc.vim"
Bundle "Pydiction"
    let g:pydiction_location = '/home/lwang/.vim/bundle/Pydiction/complete-dict'
    let g:Pydiction_menu_height = 3
Bundle "python.vim"
Bundle "completeWord.py"
Bundle "pythonhelper"


"定义使用快捷键
"nnoremap <silent> <F2> :TlistToggle<CR>
"nnoremap <F5> :AutoPreviewToggle<CR>

function GetInputChar()
    n=inputdialog("Input search string:")
    return n
endfunction

"自己定义常用的快捷键，使用（;）作为前导符
nnoremap ;a :AutoPreviewToggle<CR>
nnoremap ;c :close<CR>
nmap ;fe :cs find e <C-R>=expand("<cword>")<CR><CR> 
nmap ;fc :cs find c <C-R>=expand("<cword>")<CR><CR>
"nnoremap ;f :grep -r -n  GetInputChar() ./<CR> 
nnoremap ;fmt gg=G
nnoremap ;b <C-b>
nnoremap ;d <C-F>
nnoremap ;q :qa<CR>
nnoremap <buffer> ;s :w<CR>
nnoremap <silent> ;t :TlistToggle<CR>
nnoremap ;wl <C-W>w
nnoremap ;wj <C-W>j
nnoremap ;wh <C-W>h
nnoremap ;wk <C-W>k

"放置在Bundle的设置后，防止意外BUG
filetype plugin indent on
syntax enable
"colorscheme darkblue
"set background=dark
"colorscheme solarized
colorscheme 256-grayvim 
syntax on
