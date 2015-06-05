set nocompatible
filetype off            " for NeoBundle
 
if has('vim_starting')
        set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
 
" ここから NeoBundle でプラグインを設定します
 
" NeoBundle で管理するプラグインを追加します。
"NeoBundle 'Shougo/neocomplcache.git'
"NeoBundle 'Shougo/unite.vim.git'

" solarized
 NeoBundle 'altercation/vim-colors-solarized'
" " mustang
 NeoBundle 'croaker/mustang-vim'
" " jellybeans
 NeoBundle 'nanotech/jellybeans.vim'
" " molokai
 NeoBundle 'tomasr/molokai'
"
 NeoBundle 'Shougo/unite.vim'
 NeoBundle 'ujihisa/unite-colorscheme'

 " ファイルをtree表示してくれる
  NeoBundle 'scrooloose/nerdtree'

" 行末の半角スペースを可視化
  NeoBundle 'bronson/vim-trailing-whitespace'

"Neo bundle for closure
"NeoBundle 'vim-scripts/VimClojure'
NeoBundle 'guns/vim-clojure-static'
"NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'tpope/vim-classpath'

"paredit
NeoBundle 'vim-scripts/paredit.vim'

"Java vim
NeoBundle 'vim-scripts/java.vim'
"javaid
NeoBundle 'vim-script/javaid.vim'
"javacompete

NeoBundleLazy 'vim-scripts/javacomplete', {
\   'build': {
\       'cygwin': 'javac autoload/Reflection.java',
\       'mac': 'javac autoload/Reflection.java',
\       'unix': 'javac autoload/Reflection.java',
\   },
\}

"jcommenter.vim
NeoBundle 'vim-script/jcommenter.vim'
"java_getset.vim
NeoBundle 'vim-script/java_getset.vim'


"git
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'danarye/vim-merginalu
call neobundle#end()
 
filetype plugin indent on       " restore filetype
set tabstop=4
set shiftwidth=4
set expandtab

"--------------------
"color scheme setting
"--------------------

colorscheme industry
if &term =~ "xterm-256color" || "screen-256color"
	  set t_Co=256
	  set t_Sf=[3%dm
	  set t_Sb=[4%dm
elseif &term =~ "xterm-color"
	  set t_Co=8
	  set t_Sf=[3%dm
	  set t_Sb=[4%dm
endif

syntax enable
hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c
    
"closure setting
" rainbow_parentheses.vimの括弧の色付けを有効化
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
   " paredit
set filetype=scheme 
        
" for displaying line number
 set nu
" for displaying filename 
 set laststatus=2
