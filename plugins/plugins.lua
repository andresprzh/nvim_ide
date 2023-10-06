vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Startify
    use 'mhinz/vim-startify'

    -- Better Syntax Support
    use 'sheerun/vim-polyglot'

    -- Status bar
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    -- Auto complete code
    use {'neoclide/coc.nvim', branch = 'release'}
    use 'zchee/deoplete-jedi'
    use 'honza/vim-snippets'

    -- Plug for comment
    use 'scrooloose/nerdcommenter'

    -- Theme for nvim
    use 'joshdick/onedark.vim'

    -- Auto pairs for '(' '[' '{'
    use 'jiangmiao/auto-pairs'

    -- Multiple cursor editor
    use {'mg979/vim-visual-multi', branch = 'master'}

    -- Higlight yank area
    use 'machakann/vim-highlightedyank'

    -- folding code
    use 'tmhedberg/SimpylFold'

    -- sneak jump in code
    use 'justinmk/vim-sneak'

    -- Telescope fuzzi finder
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- vim-rooter
    use 'airblade/vim-rooter'

    -- lua colorizer
    use 'norcalli/nvim-colorizer.lua'

    -- Rainbow
    use 'junegunn/rainbow_parentheses.vim'

    -- plugins to integrate git
    use 'mhinz/vim-signify'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    use 'junegunn/gv.vim'
    use 'rhysd/git-messenger.vim'

    -- Markdown preview
    use {'iamcco/markdown-preview.nvim', run = 'mkdp#util#install()', ft = {'markdown', 'vim-plug'}}

    -- game to git gud
    use 'ThePrimeagen/vim-be-good'

    -- Indent lines
    use 'Yggdroot/indentLine'

    -- bookmarks
    use 'MattesGroeger/vim-bookmarks'

    -- Change tab bar in nvim
    use 'kyazdani42/nvim-web-devicons'
    use 'romgrk/barbar.nvim'

    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- tagbar
    use 'majutsushi/tagbar'

    -- Example of adding other plugins
    -- use 'neovim/nvim-lspconfig'
    -- use 'hrsh7th/nvim-compe'
    -- use 'nvim-treesitter/nvim-treesitter'
    -- Add more plugins here
end)
