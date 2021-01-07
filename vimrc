set nocompatible              " be iMproved, required
filetype off                  " required

" Install Plugins
call plug#begin('~/.vim/plugged')

" Dracula Theme
Plug 'dracula/vim', { 'name': 'dracula' }

" Directory tab
Plug 'scrooloose/nerdtree'

" Markdown syntax highlighting
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Python Black
Plug 'psf/black'

" Auto Complete
" Jedi-Vim
" https://github.com/davidhalter/jedi-vim
Plug 'davidhalter/jedi-vim'

" Uncomment to use it
" Bundle 'Valloric/YouCompleteMe'

" Syntax check
Plug 'vim-syntastic/syntastic'

" Linter Flake8
Plug 'nvie/vim-flake8'

" Search
Plug 'kien/ctrlp.vim'

" Git integration
Plug 'tpope/vim-fugitive'

" Powerline- status bar
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Initialize plugin system
call plug#end()

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

" Black
" Auto format on save
autocmd BufWritePre *.py execute ':Black'

" Auto format on key press
nnoremap <F9> :Black<CR>
