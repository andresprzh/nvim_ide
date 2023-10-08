return {

    -- ****** THEMES ******
    -- Status bar
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 
            'nvim-tree/nvim-web-devicons',
        }
    },
    -- Theme for nvim
    {'EdenEast/nightfox.nvim'},
    -- Startify
    {'mhinz/vim-startify'},
    -- Change tab bar in nvim
    {
        'romgrk/barbar.nvim',
        dependencies = {
          'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
          'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
    },


    -- Better Syntax Support
    {'sheerun/vim-polyglot'},

    -- Auto complete code
    {'neoclide/coc.nvim', branch = 'release'},
    {'zchee/deoplete-jedi'},
    {'honza/vim-snippets'},

    -- Plug for comment
    {'scrooloose/nerdcommenter'},

    -- -- Auto pairs for '(' '[' '{'
    {'jiangmiao/auto-pairs'},

    -- Multiple cursor editor
    {'mg979/vim-visual-multi', branch = 'master'},

    -- Higlight yank area
    {'machakann/vim-highlightedyank'},

    -- sneak jump in code
    {'justinmk/vim-sneak'},

    -- Telescope fuzzi finder
    {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.3',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- lua colorizer (higlight with color)
    {'norcalli/nvim-colorizer.lua'},

    -- Rainbow, color for parentheses
    {'junegunn/rainbow_parentheses.vim'},

    -- ****** PLUGINS TO INTEGRATE GIT ******
    {'mhinz/vim-signify'},
    {'tpope/vim-fugitive'},
    -- Commit browser
    {'junegunn/gv.vim'},
    -- Show commit message an autr (like git blame)
    {'rhysd/git-messenger.vim'},

    -- Indent lines (Show ventical lines foor every identation)
    {'Yggdroot/indentLine'},

    -- tagbar use (<leader>;) to open or close it at the right side
    {'majutsushi/tagbar'},

    -- folding python code use shortcut za to toggle fold, 
    -- more information :help fold-command
    {'tmhedberg/SimpylFold'},
}
