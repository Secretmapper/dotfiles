set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'daylerees/colour-schemes', { 'rtp':'vim/' }

Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'

Plugin 'tpope/vim-fugitive'

Plugin 'mileszs/ack.vim'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'

Plugin 'tpope/vim-surround'
Plugin 'thinca/vim-quickrun'

Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'marijnh/tern_for_vim'

Plugin 'jdonaldson/vaxe'
Bundle 'lukaszkorecki/CoffeeTags'
Plugin 'groenewege/vim-less'
Plugin 'kchmck/vim-coffee-script'
Plugin 'wavded/vim-stylus'
Plugin 'valloric/MatchTagAlways'
Plugin 'ehamberg/vim-cute-python'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set rnu
set number
set ruler
set title
set noswapfile
set clipboard=unnamed

set autoindent
set cindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set smarttab
set expandtab

set mouse=a

syntax enable
set background=light
colorscheme solarized
filetype plugin indent on

nmap <leader>nerd :NERDTreeToggle <CR>
nmap <leader>tag :TagbarToggle <CR>
nmap <leader>r :QuickRun <CR>

nmap <C-i> :call vaxe#ImportClass()<CR>

"powerline
let g:airline_powerline_fonts=1
set laststatus=2
set guifont=Meslo\ for\ Powerline

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_thres = 3 
let g:syntastic_cpp_cpplint_args = '--verbose=3'
let g:syntastic_php_checkers = ['php', 'phpcs']

"" Ultisnips
"let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsListSnippets="<c-s-tab>"

let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

"haxe
:set autowrite
