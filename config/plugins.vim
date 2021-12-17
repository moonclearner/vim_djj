call plug#begin('~/.vim/plugged')
     Plug 'preservim/nerdtree'
     Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
     Plug 'junegunn/fzf'
     Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
     Plug 'vim-airline/vim-airline'
     Plug 'vim-airline/vim-airline-themes'
     Plug 'tpope/vim-surround'
     Plug 'mileszs/ack.vim'
     " completion
     Plug 'SirVer/ultisnips'
     Plug 'honza/vim-snippets'
     Plug 'valloric/youcompleteme'
     Plug 'ludovicchabant/vim-gutentags'
     " languages syntax
     Plug 'dense-analysis/ale'
     Plug 'posva/vim-vue'
     Plug 'plasticboy/vim-markdown'
     Plug 'preservim/nerdcommenter'
     " text object
     Plug 'kana/vim-textobj-user'
     Plug 'kana/vim-textobj-indent'
     Plug 'kana/vim-textobj-syntax'
     Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }
     Plug 'sgur/vim-textobj-parameter'
call plug#end()
