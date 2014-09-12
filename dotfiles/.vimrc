"==================================
" 一般設定
"==================================
" 行番号を表示
set number
" 入力コマンドを表示
set showcmd
" ファイル名を表示
set title
" シンタックスハイライトを有効にする
syntax on
" 行の先頭・末尾で止まらずに前後の行に移動
set whichwrap=b,s,h,l,<,>,[,]
" バックアップをとらない
set nobackup
" ビープ音を無効にする
set vb t_vb=
"ファイル判定を有効にする(自動インデントに影響)
filetype on
filetype plugin indent on

"==================================
" タブ設定
"==================================
" ファイル中のTab文字を画面上の見た目で2文字分に展開
set tabstop=2
" vimが挿入するインデントを画面上の見た目で2文字分に展開
set shiftwidth=2
" キーボードでTabキーを押した時に挿入される空白の量
" (softtabstopに0を指定するとtabstopで指定した量になる)
set softtabstop=0
" タブ(tab)キーを押したときに、スペース(空白文字)を入れる
set expandtab

"==================================
" 不可視文字の表示設定
"==================================
set list
" タブを「>...」で表示
" 行末のスペースを「-」で表示
set lcs=tab:>.,trail:-
highlight SpecialKey cterm=NONE ctermfg=7 guifg=7
" 全角スペースをアンダーライン表示
highlight JpSpace cterm=underline ctermfg=7 guifg=7
au BufRead,BufNew * match JpSpace /　/
