call plug#begin('~/.vim/plugged')

        " " File Explorer
        " Plug 'scrooloose/NERDTree'
        
        " Better Syntax Support
        Plug 'sheerun/vim-polyglot'

        " Status bar
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'

        " Auto complete code
        Plug 'neoclide/coc.nvim', {'branch': 'release'}

        " Theme for nvim
        Plug 'joshdick/onedark.vim'
        "Plug 'arcticicestudio/nord-vim'

        " Auto pairs for '(' '[' '{'
        Plug 'jiangmiao/auto-pairs'

        "FZF & vim-rooter into vim
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
        Plug 'airblade/vim-rooter'

        "lua colorizer
        Plug 'norcalli/nvim-colorizer.lua'

        "Rainbow
        Plug 'junegunn/rainbow_parentheses.vim'
        
        " plugins to integrate git
        Plug 'mhinz/vim-signify'
        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-rhubarb'
        Plug 'junegunn/gv.vim'

        " Markdown preview
        Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()
