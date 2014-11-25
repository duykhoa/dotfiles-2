set nocompatible              " be iMproved, required
filetype off                  " required

" For ruby block selecting
runtime macros/matchit.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Look and Feel Plugin
Plugin 'sickill/vim-monokai'

" Markdown Plugin
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'wakatime/vim-wakatime'

" Plugins
Plugin 'vim-scripts/vim-auto-save'
let g:auto_save = 1
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'kien/ctrlp.vim' "Ctrl + p to find your file
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/tComment'
Plugin 'ervandew/supertab' 

let g:rspec_command = "Dispatch rspec {spec}"

" Ruby Plugins
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-endwise'
Plugin 'jgdavey/vim-blockle'
Bundle 'thoughtbot/vim-rspec'

" Coffee Script Plugin
Plugin 'kchmck/vim-coffee-script'

" SCSS Plugin
Plugin 'cakebaker/scss-syntax.vim'

" Jekyll Plugin
Plugin 'parkr/vim-jekyll'

" Template Engine Plugins
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-haml'

" File Browser Plugin
Plugin 'scrooloose/nerdtree'
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeAutoDeleteBuffer = 1

call vundle#end()            " required

" Personalise my VIM
let &titlestring = "Jack's VIM"
if &term == "screen"
  set t_ts=^[k
  set t_fs=^[\
endif

if &term == "screen" || &term == "xterm"
  set title
endif

syntax enable
" colorscheme monokai

" Make VIM faster
set synmaxcol=100

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set autoindent
set bg=light
set number

" Get rid of 70's technologies
set nobackup
set noswapfile

set clipboard=unnamed
" Other Mappings

" Navigation around windows
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-R> <C-W><C-X>
nnoremap <C-R> <C-W><C-X>
nnoremap <C-=> <C-W>|

" *****************************************
" "     Leader Mappings
" " *****************************************
let mapleader = " "
" opens NerdTree
map <Leader>n :NERDTreeToggle<CR> 

" *********************************
" RSPEC VIM MAPPING
" *********************************
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_runner = "os_x_iterm"

" convert ruby hash from :abc => '123' to abc: '123'
map <Leader>h :%s/:\([^=,'"]*\) =>/\1:/g"']<CR>

" Quit all windows shortcut
map <Leader>x :qa<CR>
map <Leader>X :wqa<CR>
map <Leader>' cs"'

" Change VIM insert cursor
if &term =~ '^xterm'
  let &t_SI .= "\<Esc>[6 q"
  let &t_EI .= "\<Esc>[1 q"
endif

