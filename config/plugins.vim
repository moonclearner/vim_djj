call plug#begin('~/.vim/plugged')
     Plug 'preservim/nerdtree'
     Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
     Plug 'junegunn/fzf'
     Plug 'vim-airline/vim-airline'
     Plug 'vim-airline/vim-airline-themes'
     Plug 'tpope/vim-surround'
     " completion
     Plug 'SirVer/ultisnips'
     Plug 'honza/vim-snippets'
     Plug 'valloric/youcompleteme'
     " languages syntax
     Plug 'scrooloose/syntastic'
     Plug 'posva/vim-vue'
     Plug 'plasticboy/vim-markdown'
     Plug 'majutsushi/tagbar'
call plug#end()
