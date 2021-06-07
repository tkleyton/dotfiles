set nocompatible              " be iMproved, required
filetype off                  " required

" START - Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
if iCanHazVundle == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :PluginInstall
endif
" END - Setting up Vundle - the vim plugin bundler

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'davidhalter/jedi-vim'
" Plugin 'ycm-core/YouCompleteMe'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Yggdroot/indentLine'
Plugin 'preservim/tagbar'
Plugin 'severin-lemaignan/vim-minimap'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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

" Show line numbers
set relativenumber
set number

" New splits are created to the right/bottom
set splitright
set splitbelow

" Set colorscheme
syntax on
colorscheme torte

" Highlight cols > 80
let &colorcolumn=join(range(81,999),',')
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" Set folding and open files with no folding
set foldmethod=indent
" set foldlevelstart=99

" Map <space> to open/close all foldings
nnoremap <space> zA
vnoremap <space> zf

" Change new line behavior by not entering insert mode
nnoremap o o<Esc>
nnoremap O O<Esc>

" Show tagbar
nmap <F8> :TagbarToggle<CR>

" Comment selected lines
vnoremap # :s/^/#<CR>

" Map set/unset scrollbind for all windows
nnoremap <F5> :windo set scrollbind!<CR>
