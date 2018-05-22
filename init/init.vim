colorscheme elflord
set clipboard=unnamedplus

set wrap
set number
set incsearch
set ignorecase
set smartcase

set noswapfile

set tabstop=4
set shiftwidth=4
set autoindent
set noexpandtab
set cindent

inoremap <silent>jj <Esc>
nnoremap j gj
nnoremap k gk
set whichwrap=b,s,h,l,<,>,[,],~
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
"let loaded_matchpattern=1
"set showmatch
"set matchtime=1

"save cursolposition
if has("autocmd")
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"")<=line("$")|
	\	exe "normal! g'\""|
	\endif
endif
"incsearch
"map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <plug>(incsearrch-stay)
"" complete

if &compatible
	  set nocompatible               " Be iMproved
endif

set runtimepath+=/home/sakakendo0321/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('/home/sakakendo0321/.cache/dein')
	call dein#begin('/home/sakakendo0321/.cache/dein')
	call dein#add('/home/sakakendo0321/.cache/dein/repos/github.com/Shougo/dein.vim')
	call dein#add('Shougo/neosnippet.vim')
	call dein#add('Shougo/neosnippet-snippets')
	call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })
"	call dein#add('Valloric/YouCompleteMe')
"colorscheme
	call dein#add('tomasr/molokai')
"powerline
	call dein#add('bling/vim-airline')
	call dein#add('vim-airline/vim-airline-themes')
"	call dein#add('Lokaltog/powerline',{'rtp':'powerline/bindings/vim/'})
"syntax
	call dein#add('vim-syntastic/syntastic')
	call dein#add('nvie/vim-flake8')
"complete
	call dein#add('Shougo/deoplete.nvim')
	call dein#add('zchee/deoplete-jedi')

	call dein#add('Shougo/vimproc.vim',{'build':'make'})
	call dein#end()
	call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif

"color scheme
colorscheme molokai
set t_Co=256

"airline
let g:airline_powerline_fonts=1
let g:airline_theme='molokai'
let g:airline_powerline_fonts=1
"syntax 
let python_highlight_all=1
"complete
let g:deoplete#enable_at_startup=1
"jedi

filetype plugin indent on
syntax enable


