call plug#begin('~/.vim/plugged')

        " Startify
        Plug 'mhinz/vim-startify'

        " " " File Explorer
        " " Plug 'scrooloose/NERDTree'

        " Better Syntax Support
        Plug 'sheerun/vim-polyglot'

        " Status bar
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'

        " Auto complete code
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'zchee/deoplete-jedi'
        Plug 'honza/vim-snippets'

        " Plug for comment
        Plug 'scrooloose/nerdcommenter'

        " Theme for nvim
        Plug 'joshdick/onedark.vim'
        "Plug 'arcticicestudio/nord-vim'

        " Auto pairs for '(' '[' '{'
        Plug 'jiangmiao/auto-pairs'

        " Multiple cursor editor
        Plug 'mg979/vim-visual-multi', {'branch': 'master'}

        " Higlight yank area
        Plug 'machakann/vim-highlightedyank'

        " folding code
        Plug 'tmhedberg/SimpylFold'

        " sneak jump in code
        Plug 'justinmk/vim-sneak'

        " Telescope fuzzi finder
        Plug 'nvim-lua/popup.nvim'
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim'
        "FZF
        " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        " Plug 'junegunn/fzf.vim'

        " vim-rooter
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
        Plug 'rhysd/git-messenger.vim'

        " Markdown preview
        Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

        " game to git gud
        Plug 'ThePrimeagen/vim-be-good'

        " Indent lines
        Plug 'Yggdroot/indentLine'

        " bookmarks
        Plug 'MattesGroeger/vim-bookmarks'

        " Change tab bar in nvim
        Plug 'kyazdani42/nvim-web-devicons'
        Plug 'romgrk/barbar.nvim'

        " Treesitter
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

        " Github Copilot
        " Plug 'github/copilot.vim'


        " tagbar
        Plug 'majutsushi/tagbar'
call plug#end()
