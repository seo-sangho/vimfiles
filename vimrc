"===================================================================
" minimalist(https://github.com/junegunn/vim-plug) download
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim    

" Brief help
" :PlugInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PlugUpdate     - Install or update plugins
" :PlugUpgrade    - Upgrade vim-plug itself
" :PlugStatus     - Check the status of plugins
" :PlugDiff       - Examine changes from the previous update and the pending changes
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Minimalist
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'

" Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'

" Call plug#end to update &runtimepath and initialize the plugin system.
" - It automatically executes `filetype plugin indent on` and `syntax enable`
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

" Color schemes should be loaded after plug#end().
" We prepend it with 'silent!' to ignore errors when it's not yet installed.
silent! colorscheme seoul256

"colorscheme gruvbox
"set background=dark
set t_Co=256
set t_ut=
colorscheme codedark

filetype plugin indent on

if has("syntax")
  syntax on
endif

set hlsearch
set nu
set autoindent
set cindent

set ts=4 " Tab width
set shiftwidth=4 " autoindent width

set laststatus=2 " status bar
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set backspace=indent,eol,start

set enc=utf-8
set fenc=utf-8

"set sts=4
"set showmatch
"set smartcase
"set smarttab
"set smartindent
"set ruler
"set fileencodings=utf8,euc-kr

nmap <C-E> :NERDTreeToggle<CR>
nmap <C-T> :Tagbar<CR>

" autocmd
autocmd BufNewFile *.py colo morning|set ts=2 sw=2
autocmd BufNewFile *.txt colo evening

" vim-code-dark theme for airline
let g:airline_theme = 'codedark'
