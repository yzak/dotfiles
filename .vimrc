set nocompatible               " be iMproved
filetype off


if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif
" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'grep.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/syntastic'

NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
 
if has("lua")
  NeoBundleLazy 'Shougo/neocomplete', { 'autoload' : {
        \   'insert' : 1,
        \ }}
endif
 
NeoBundleLazy 'Shougo/neosnippet', {
      \ 'autoload' : {
      \   'commands' : ['NeoSnippetEdit', 'NeoSnippetSource'],
      \   'filetypes' : 'snippet',
      \   'insert' : 1,
      \   'unite_sources' : ['snippet', 'neosnippet/user', 'neosnippet/runtime'],
      \ }}
 
NeoBundle 'tpope/vim-rails', { 'autoload' : {
      \ 'filetypes' : ['haml', 'ruby', 'eruby'] }}
 
NeoBundleLazy 'alpaca-tc/vim-endwise.git', {
      \ 'autoload' : {
      \   'insert' : 1,
      \ }}
 
NeoBundleLazy 'edsono/vim-matchit', { 'autoload' : {
      \ 'filetypes': 'ruby',
      \ 'mappings' : ['nx', '%'] }}
 
NeoBundleLazy 'basyura/unite-rails', {
      \ 'depends' : 'Shougo/unite.vim',
      \ 'autoload' : {
      \   'unite_sources' : [
      \     'rails/bundle', 'rails/bundled_gem', 'rails/config',
      \     'rails/controller', 'rails/db', 'rails/destroy', 'rails/features',
      \     'rails/gem', 'rails/gemfile', 'rails/generate', 'rails/git', 'rails/helper',
      \     'rails/heroku', 'rails/initializer', 'rails/javascript', 'rails/lib', 'rails/log',
      \     'rails/mailer', 'rails/model', 'rails/rake', 'rails/route', 'rails/schema', 'rails/spec',
      \     'rails/stylesheet', 'rails/view'
      \   ]
      \ }}
 
NeoBundleLazy 'taka84u9/vim-ref-ri', {
      \ 'depends': ['Shougo/unite.vim', 'thinca/vim-ref'],
      \ 'autoload': { 'filetypes': ['ruby','Gemfile','haml','eruby','yaml','python','php','sh','css','html','java','scala','vim','javascript','cpp'] } }
 
NeoBundleLazy 'alpaca-tc/neorspec.vim', {
      \ 'depends' : ['alpaca-tc/vim-rails', 'tpope/vim-dispatch'],
      \ 'autoload' : {
      \   'commands' : ['RSpec', 'RSpecAll', 'RSpecCurrent', 'RSpecNearest', 'RSpecRetry']
      \ }}
 
NeoBundleLazy 'alpaca-tc/alpaca_tags', {
      \ 'depends': 'Shougo/vimproc',
      \ 'autoload' : {
      \   'commands': ['AlpacaTagsUpdate', 'AlpacaTagsSet', 'AlpacaTagsBundle']
      \ }}
 
NeoBundleLazy 'tsukkee/unite-tag', {
      \ 'depends' : ['Shougo/unite.vim'],
      \ 'autoload' : {
      \   'unite_sources' : ['tag', 'tag/file', 'tag/include']
      \ }}

NeoBundle 'tpope/vim-dispatch'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'scrooloose/nerdtree'

""NeoBundle 'https://bitbucket.org/kovisoft/slimv'

filetype plugin indent on     " required!
filetype indent on
syntax on


" NeoBundleにするので、pathogenは使わなくする
""call pathogen#runtime_append_all_bundles()
""call pathogen#helptags()
"カーソル行をハイライト
set cursorline
" カレントウィンドウにのみ罫線を引く
  augroup cch
    autocmd! cch
      autocmd WinLeave * set nocursorline
      autocmd WinEnter,BufRead * set cursorline
  augroup END

:hi clear CursorLine
:hi CursorLine gui=underline
highlight CursorLine ctermbg=black guibg=black
"Escの2回押しでハイライト消去
nmap <ESC><ESC> :nohlsearch<CR><ESC>

" CTRL-hjklでウィンドウ移動
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" tab操作
nnoremap <silent> <C-c> :tabnew<CR>
nnoremap <silent> <C-n> :tabn<CR>
nnoremap <silent> <C-p> :tabp<CR>


set noswapfile
set backup

"新しい行のインデントを現在行と同じにする
"set autoindent
""バックアップファイルを作るディレクトリ
set backupdir=$HOME/.vim/backup
"ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
"set browsedir=buffer
""クリップボードをWindowsと連携
"set clipboard+=unnamed
set clipboard=unnamed
set clipboard+=autoselect
"Vi互換をオフ
"set nocompatible
""スワップファイル用のディレクトリ
"set directory=$HOME/vimbackup
"タブの代わりに空白文字を挿入する
"set expandtab
""変更中のファイルでも、保存しないで他のファイルを表示
set hidden
"インクリメンタルサーチを行う
"set incsearch
""タブ文字、行末など不可視文字を表示する
set list
"listで表示される文字のフォーマットを指定する
set listchars=eol:$,tab:>\ ,extends:<
""行番号を表示する
set number
"シフト移動幅
""set shiftwidth=4
"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch
""検索時に大文字を含んでいたら大/小を区別
set smartcase
"新しい行を作ったときに高度な自動インデントを行う
"set smartindent
""行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
"ファイル内の  が対応する空白の数
""set tabstop=4
"カーソルを行頭、行末で止まらないようにする
"set whichwrap=b,s,h,l,<,>,[,]
""検索をファイルの先頭へループしない
set nowrapscan
"縦幅
"set lines=50
""横幅
"set columns=150
"入力モード時、ステータスラインのカラーを変更
"augroup InsertHook
"autocmd!
"autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
"autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
"augroup END
""日本語入力をリセット
au BufNewFile,BufRead * set iminsert=0
"タブ幅をリセット
"au BufNewFile,BufRead * set tabstop=4 shiftwidth=4


" ------------------------------------
"  srcexpl.vim
" ------------------------------------
"let g:SrcExpl_UpdateTags = 1
"
" ------------------------------------
"  grep.vim
" ------------------------------------
" 検索外のディレクトリ、ファイルパターン
let Grep_Skip_Dirs = '.svn .git .hg'
let Grep_Skip_Files = '*.bak *~'
let Grep_Find_Use_Xargs = 0 

"------------------------------------
" AlpacaTags.vim
"------------------------------------
let g:alpaca_tags#config = {
       \ '_' : '-R --sort=yes --languages=+Ruby --languages=-js,JavaScript',
       \ 'js' : '--languages=+js',
       \ '-js' : '--languages=-js,JavaScript',
       \ 'vim' : '--languages=+Vim,vim',
       \ 'php' : '--languages=+php',
       \ '-vim' : '--languages=-Vim,vim',
       \ '-style': '--languages=-css,scss,js,JavaScript,html',
       \ 'scss' : '--languages=+scss --languages=-css',
       \ 'css' : '--languages=+css',
       \ 'java' : '--languages=+java $JAVA_HOME/src',
       \ 'ruby': '--languages=+Ruby',
       \ 'coffee': '--languages=+coffee',
       \ '-coffee': '--languages=-coffee',
       \ 'bundle': '--languages=+Ruby',
       \ }

augroup AlpacaTags
  autocmd!
"  if exists(':Tags')
    autocmd BufWritePost Gemfile AlpacaTagsBundle
    autocmd BufEnter * AlpacaTagsSet
    " 毎回保存と同時更新したくない場合はコメントにする
    autocmd BufWritePost * AlpacaTagsUpdate
"  endif
augroup END

"------------------------------------
" VimFiler.vim
"------------------------------------
" The prefix key.
nnoremap    [vimfiler]   <Nop>
nmap    f [vimfiler]

nnoremap <silent> [vimfiler]d  :<C-u>VimFiler<CR>


"------------------------------------
" syntastic Rubocop
"------------------------------------
let g:syntastic_mode_map = { 'mode': 'passive',
            \ 'active_filetypes': ['ruby'] }
let g:syntastic_ruby_checkers = ['rubocop']

"------------------------------------
" rspec
"------------------------------------

"let mapleader=" "
"let g:rspec_command = "Dispatch rspec {spec}"
"nmap c :call RunCurrentSpecFile()
"nmap n :call RunNearestSpec()
"nmap l :call RunLastSpec()
"nmap a :call RunAllSpecs()

""------------------------------------
" unite.vim
"------------------------------------
" The prefix key.
nnoremap    [unite]   <Nop>
nmap    f [unite]

nnoremap [unite]u  :<C-u>Unite<Space>
nnoremap <silent> [unite]a  :<C-u>UniteWithCurrentDir -buffer-name=files buffer file_mru bookmark file<CR>
nnoremap <silent> [unite]f  :<C-u>Unite -buffer-name=files file<CR>
nnoremap <silent> [unite]b  :<C-u>Unite buffer<CR>
nnoremap <silent> [unite]m  :<C-u>Unite file_mru<CR>

"nnoremap <silent> [unite]b  :<C-u>UniteWithBufferDir -buffer-name=files
"buffer file_mru bookmark file<CR>

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
  " Overwrite settings.
  imap <buffer> jj      <Plug>(unite_insert_leave)
  nnoremap <silent><buffer> <C-k> :<C-u>call unite#mappings#do_action('preview')<CR>
  imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)
  " Start insert.
  let g:unite_enable_start_insert = 1
endfunction"}}}
let g:unite_source_file_mru_limit = 200

" ウィンドウを分割して開く
autocmd FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
autocmd FileType unite inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
" ウィンドウを縦に分割して開く
autocmd FileType unite nnoremap <silent> <buffer> <expr> <C-k> unite#do_action('vsplit')
autocmd FileType unite inoremap <silent> <buffer> <expr> <C-k> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
autocmd FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
autocmd FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q

" 拡張子で読み込むtagsを切り替える
"au BufNewFile,BufRead *.php set tags+=$HOME/.vim/tags/php.tags
"au BufNewFile,BufRead *.cs set tags+=$HOME/.vim/tags/c#.tags
" タグジャンプ先が複数の時は一覧表示
nnoremap <C-]> g<C-]>
"colorscheme default

"let g:hybrid_use_Xresources = 1
"colorscheme desert

" NERDTree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
