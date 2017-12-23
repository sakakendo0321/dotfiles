"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/sakakendo/.config/nvim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/sakakendo/.config/nvim')
  call dein#begin('/home/sakakendo/.config/nvim')

  " Let dein manage dein
  " Required:
  call dein#add('/home/sakakendo/.config/nvim/repos/github.com/Shougo/dein.vim')

  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })
  call dein#add('haya14busa/incsearch.vim')
  call dein#disable('Townk/vim-autoclose')
"  call dein#add('Shougo/deoplete.nvim')
"  call dein#add('zchee/deoplete-jedi')


  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

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
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <plug>(incsearrch-stay)
"" complete
"deoplete
let g:deoplete#enable_at_startup=1
"deoplete-jedi
let g:deoplete#sources#jedi#server_timeout=10
let g:deoplete#sources#jedi#statement_length=20
let g:deoplete#sources#jedi#enable_cache=1
let g:deoplete#sources#jedi#show_docstring=0
"let g:deoplete#sources#jedi#python_path

