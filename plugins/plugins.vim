call plug#begin('~/.vim/plugged')
        " Better Syntax Support
        Plug 'sheerun/vim-polyglot'
        " File Explorer
        " Plug 'scrooloose/NERDTree'
        " Auto pairs for '(' '[' '{'
        Plug 'jiangmiao/auto-pairs'
        " Status bar
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        " Markdown preview
        Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
        " Theme for nvim
        Plug 'joshdick/onedark.vim'
        "Plug 'arcticicestudio/nord-vim'
        " Auto complete code
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        "FZF & vim-rooter into vim
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
        Plug 'airblade/vim-rooter'
call plug#end()
