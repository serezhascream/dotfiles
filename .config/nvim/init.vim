scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8 " set file encoding when it`s open
set nocompatible
set path+=**

runtime configs/plugins.vim
runtime snippets/snippets.vim

set completeopt=longest,menuone
set confirm
set cursorline
set hidden
set history=128
set ignorecase
set imsearch=0
set infercase
set laststatus=2
set linebreak
set list
set listchars=eol:¬,tab:\•\ 
set mouse=
set nobackup
set noexpandtab
set nofoldenable
set noswapfile
set number
set pastetoggle=
set shiftwidth=4 
set showbreak=͢
set showcmd
set showmatch
set showtabline=2
set signcolumn="yes"
set smartcase
set smartindent
set splitbelow
set splitright
set statusline+=%F
set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P
set tabstop=4 
set title
set titleold=
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)\ -\ %{v:servername} titlelen=0
set undolevels=1000
set updatetime =100
set wildignore+=*/min/*,*/vendor/*,*/node_modules/*,*/bower_components/*,*/dictionaries/*,*/dist_version/*,*/sitestatic/*
set wildmenu
set wrap
set wrapscan

if &diff
	highlight DiffAdd cterm=none ctermfg=green ctermbg=black
	highlight DiffDelete cterm=none ctermfg=darkred ctermbg=black
	highlight DiffChange cterm=none ctermfg=none ctermbg=black
	highlight DiffText cterm=none ctermfg=black ctermbg=darkyellow
endif

hi NonText ctermfg=blue
hi SpecialKey ctermfg=blue
hi LineNr ctermfg=red

" ####### MAPS
map <S-TAB> :bn<CR>
nmap <S-TAB> :bn<CR>
imap <S-TAB> <Esc>:bn<CR>i
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

inoremap <CR> <CR>x<BS>
nnoremap o ox<BS>
nnoremap O Ox<BS>
nnoremap <C-J> ciW<CR><Esc>:if match( @", "^\\s*$") < 0<Bar>exec "norm P-$diw+"<Bar>endif<CR>

nnoremap <C-D> "=strftime("%d.%m.%Y %H:%M")<CR>p

command! MakeTags !ctags -R .
