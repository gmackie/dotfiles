set shell=bash
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-haml'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'digitaltoad/vim-jade'
Plugin 'groenewege/vim-less'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'ervandew/supertab'
" Plugin 'marijnh/tern_for_vim'
call vundle#end()            " required
filetype plugin indent on    " required
let g:useNinjaTagList=1
let NERDTreeShowHidden=1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='murmur'
map <C-o> :NERDTreeToggle<CR>
set number
set cursorline
set mouse=a
syntax enable
set encoding=utf-8

"When editing a file, make screen display the name of the file you are editing
function! SetTitle()
  if $TERM =~ "^screen"
    let l:title = 'vi: ' . expand('%:t')        
    
    if (l:title != 'vi: __Tag_List__')
      let l:truncTitle = strpart(l:title, 0, 15)
      silent exe '!echo -e -n "\033k' . l:truncTitle . '\033\\"'     
    endif
  endif
endfunction



" Run it every time we change buffers
autocmd BufEnter,BufFilePost * call SetTitle()

set ttimeoutlen=50
set laststatus=2
set tabstop=2
set softtabstop=2
set tw=80
set expandtab
set autoindent
set t_Co=256
colorscheme molokai


