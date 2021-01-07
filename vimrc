set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Vundle plugin manager
" https://github.com/VundleVim/Vundle.vim
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Dracula Theme
Plugin 'dracula/vim', { 'name': 'dracula' }

" Directory tab
Plugin 'scrooloose/nerdtree'

" Markdown syntax highlighting
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Python Black
Plugin 'psf/black'

" Auto Complete
" Jedi-Vim
" https://github.com/davidhalter/jedi-vim
Plugin 'davidhalter/jedi-vim'


" Uncomment to use it
" Bundle 'Valloric/YouCompleteMe'

" Syntax check
Plugin 'vim-syntastic/syntastic'

" Linter Flake8
Plugin 'nvie/vim-flake8'

" Search
Plugin 'kien/ctrlp.vim'

" Git integration
Plugin 'tpope/vim-fugitive'

" Powerline- status bar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" UTF-8 support
set encoding=utf-8

" Set spellchecker
set spell spelllang=pt_br,en_us

" Set side numbers
set number
set ruler
set nu

" Set color scheme
colorscheme dracula

" Open NERDTree on start
" autocmd vimenter * NERDTree
" Show hidden files
let NERDTreeShowHidden=1
" Toggle NerdTree
nnoremap <C-e> :NERDTreeToggle<CR>

" Highlight trailing spaces
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


" Highlight YAML front matter as used by Jekyll or Hugo.
let g:vim_markdown_frontmatter = 1

" Header folding on Markdown
let g:vim_markdown_folding_disabled = 1

" split position
set splitbelow
set splitright
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Code completion
let g:ycm_python_interpreter_path = '~/environments/general/bin/python'
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion=1

" Indentation
" Python
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ | set softtabstop=4
    \ | set shiftwidth=4
    \ | set textwidth=79
    \ | set expandtab
    \ | set autoindent
    \ | set fileformat=unix

" Web
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ | set softtabstop=2
    \ | set shiftwidth=2

" Syntax highlight
let python_highlight_all=1
syntax on

" System clipboard
set clipboard=unnamed

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
