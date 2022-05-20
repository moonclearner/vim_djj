call plug#begin('~/.vim/plugged')
     Plug 'preservim/nerdtree'
     " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
     Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
     Plug 'vim-airline/vim-airline'
     Plug 'vim-airline/vim-airline-themes'
     Plug 'tpope/vim-surround'
     Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
     " completion
     Plug 'honza/vim-snippets'
     Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
     " themes
     Plug 'morhetz/gruvbox'
call plug#end()
