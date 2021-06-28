" if empty(glob('~/.config/nvim/autoload/plug.vim'))
"   sillet !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
"     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"   "autocm VimEnter * PlugInstall
"   autocmf VimEnter * PlugInstall | source $MYVIMRC
" endif
call plug#begin('~/.vim/plugged')

        " File Explorer
        Plug 'scrooloose/NERDTree'

        " Better Syntax Support
        " Plug 'sheerun/vim-polyglot'

        " File explorer
        Plug 'kyazdani42/nvim-tree.lua'

        " Status bar
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'

        " Auto complete code
        " Plug 'neoclide/coc.nvim', {'branch': 'release'}
        " Plug 'zchee/deoplete-jedi'
        " Plug 'honza/vim-snippets'
        Plug 'hrsh7th/vim-vsnip'
        " LSP
        Plug 'neovim/nvim-lspconfig'
        " Plug 'nvim-lua/completion-nvim'
        Plug 'hrsh7th/nvim-compe'
        " Plug 'kabouzeid/nvim-lspinstall'

        " " Plug for comment
        Plug 'scrooloose/nerdcommenter'

        " Theme for nvim
        Plug 'joshdick/onedark.vim'
        " Plug 'arcticicestudio/nord-vim'

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

        " " Indent lines PROBLEMS
        " Plug 'Yggdroot/indentLine'

        " bookmarks
        Plug 'MattesGroeger/vim-bookmarks'

        " Change tab bar in nvim
        Plug 'kyazdani42/nvim-web-devicons'
        Plug 'romgrk/barbar.nvim'
        
call plug#end()
