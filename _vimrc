"mouse mode--windows
source $VIMRUNTIME/vimrc_example.vim 
source $VIMRUNTIME/mswin.vim 
behave mswin
source $VIMRUNTIME/vimrc_example.vim 
"Multiple cursors 
source ~/.vundle

"no compatible with vi"
set nocompatible
set nobackup
set noswapfile

"highlight
"highlight in line
"set cursorline
"highlight in search
set hlsearch 

"syntax brightness and test synax auto
syntax on
syntax enable

"about tab
"For python "|" if use tab for indent
"set list lcs=tab:\|\
"display tab
"set list 
"set listchars=tab:>-,trail:- 
set autoindent " same level indent
set smartindent " next level indent
set smarttab
set expandtab
"the tab in c/c++
set cindent

"normap
noremap <F5> :!python %
noremap <F2> :NERDTree

"color
set background =dark
if has ('gui_running')
   color slate
   "set guifont=Monospace\ Bold\ 11
else
   color torte
endif

"test the type of file
filetype on
filetype plugin on

"autocmd
"indent for different filetype
autocmd filetype * set shiftwidth=4 tabstop=4
autocmd filetype python set suffixesadd=
autocmd filetype markdown set wrap
autocmd FileType ruby,haml,erb,html,slim,yaml,scss,sass,coffee,treetop,htmldjango setlocal shiftwidth=2 tabstop=2

" encoding . utf-8 rules!
" let $LANG="zh_CN.UTF-8" " locales
" set fileencoding=utf-8 " prefer
set ambiwidth=double
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set encoding=utf-8
"gvim's font,for mor--help guifont
if has("gui_gtk2")
	set guifont=Bitstream\ Vera\ Sans\ Mono\ 12,Fixed\ 12
    set guifontwide=Microsoft\ Yahei\ 12,WenQuanYi\ Zen\ Hei\ 12
endif

"misc
set wildmenu
set nu
set go=
set ruler
set wildignore+=*.pyc,*.o,*.obj,.git,
set background=dark
set incsearch

"shortcuts"
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
set winaltkeys=no
" key bindings
noremap <c-Right> :tabn<cr>
noremap <c-left>  :tabp<cr> 
noremap <C-\> :vs<cr>
noremap vv <C-Q>
" pageup & down is annoying
noremap <PageUp> gk
noremap <PageDown> gj 
inoremap <PageUp> <esc>gka
inoremap <PageDown> <esc>gja
" windows
noremap <C-Up> <C-W>k<C-W>_
noremap <C-Down> <C-W>j<C-W>_ 
noremap <C-\> :vs<cr>

"unit test ??
if has("sutocmd")
    filetype plugin indent on
    auto FileType python setlocal et | setlocal sta |setlocal sw=4
    autocmd FileType python compiler python
    autocmd FileType python setlocal makeprg=python\ ./alltests.py
    autocmd BufNewFile,BufRead test*.py setlocal makeprg=python\ %
    autocmd BufNewFile test*.py 0r ~/.vim/skeleton/test.py
    autocmd BufNewFile alltests.py 0r ~/.vim/skeleton/alltests.py
    autocmd BufNewFile *.py 0r ~/.vim/skeleton/skeleton.py
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" on plugins
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree
let NERDTreeIgnore = ['\env','\.vim$', '\~$', '\.pyc$', '\.o$', '\.swp$','\.egg-info$', '^dist$', '^build$']
let NERDTreeSortOrder = ['Makefile', '\/$', '\.py$', '\.rb$', '\.md$','\.html$', '*', '^test_', '\.swp$', '\~$']
let NERDTreeShowBookmarks = 1
let NERDTreeHightlightCursorline = 1
let NERDTreeDirArrows = 0

"For markdown
let g:vim_markdown_folding_disabled=0




