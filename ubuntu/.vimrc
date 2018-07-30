"colorscheme elflord
set clipboard=unnamedplus

syntax on
filetype indent plugin on


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

set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

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

"plugin
if &compatible
  set nocompatible               " Be iMproved
endif

if &compatible
  set nocompatible               
endif

set runtimepath+=/home/sakak/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('/home/sakak/.cache/dein')
  call dein#begin('/home/sakak/.cache/dein')

  call dein#add('/home/sakak/.cache/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
	  call dein#add('roxma/nvim-yarp')
	  call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#add('airblade/vim-gitgutter')

  call dein#add('jiangmiao/auto-pairs')
  call dein#add('alvan/vim-closetag')

  call dein#add('altercation/vim-colors-solarized')
  call dein#add('itchyny/lightline.vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif


"deoplete.nvim
let g:deoplete#enable_at_startup=1
inoremap <expr><tab> pumvisible() ? "<c-n>" : "\<tab>"
inoremap <expr><S-tab> pumvisible() ? "<c-p>" : "\<tab>"

"vim-gitgutter


"auto-pairs
let g:AutoPairsFlyMode=1

" vim-closetag

"vim-colors-solarized
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

"lightline
set laststatus=2
set noshowmode
let g:lightline={
	\'colorscheme':'wombat',
	\ }

