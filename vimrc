syntax enable
set tabstop=4
set shiftwidth=4
set expandtab
set number
filetype indent on
set autoindent
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugins"
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-repeat'
Plugin 'Shougo/neocomplete.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'mileszs/ack.vim'
Plugin 'prettier/vim-prettier'
Plugin 'pangloss/vim-javascript'

call vundle#end()

filetype plugin indent on

let python_highlight_all = 1
map <C-n> :NERDTreeToggle<CR>

nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l
nmap <c-h> <c-w>h



autocmd vimenter * NERDTree
"autocmd bufenter * if (winnr(“$”) == 1 && exists(“b:NERDTree”) && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

syntax enable
set relativenumber

nmap s <Plug>(easymotion-s2) 

let g:EasyMotion_smartcase = 1 

map <Leader>j <Plug>(easymotion-j) 
map <Leader>k <Plug>(easymotion-k)

let g:neocomplete#enable_at_startup = 1



