" # VUNDLE
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" ####### Plugins list
Plugin 'groenewege/vim-less'
Plugin 'ap/vim-css-color'
Plugin 'w0rp/ale'
Plugin 'airblade/vim-gitgutter'
Plugin 'arcticicestudio/nord-vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Shougo/deoplete.nvim'

Plugin 'preservim/nerdtree'
Plugin 'plasticboy/vim-markdown'

call vundle#end() 

" ####### AUTOCOMPLETE
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=e
set wildignore+=*/tmp/*,*/log/*,*/public/sitestatics/*,*/public/img/*,*/public/fonts

" # GITGUTTER
let g:gitgutter_grep     = ''
let g:gitgutter_map_keys = 0

runtime configs/ale
runtime configs/airline.vim
runtime configs/nerdtree
runtime configs/deoplete.vim

colorscheme nord
