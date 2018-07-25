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

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/sakakendo/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/sakakendo/.cache/dein')
  call dein#begin('/Users/sakakendo/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/sakakendo/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  call dein#add('bling/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  call dein#add('jiangmiao/auto-pairs')
  

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
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


"color scheme
"colorscheme molokai
set t_Co=256

"airline
let g:airline_powerline_fonts=1
let g:airline_theme='papercolor'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=0

"syntax 
let python_highlight_all=1
"complete
let g:deoplete#enable_at_startup=1
"jedi


"quickrun
let g:quickrun_config={
	\'_':{
		\ 'runner' : 'vimproc',
		\ 'runner/vimproc/updatetime' : 40,
		\ 'outputter' : 'error' ,
		\ 'outputter/error/success' : 'buffer',
		\ 'outputter/error/error' : 'quickfix',
		\ 'outputter/buffer/split' : ':botright 8sp',
	\}
\}
let g:quickrun_no_defaullt_key_mappings=1
"nmap <Leader>r :cclose<CR>:write<CR>:QuickRun -mode n<CR>
nmap <F5> :cclose<CR>:write<CR>:QuickRun -mode n<CR>


filetype plugin indent on
syntax enable



