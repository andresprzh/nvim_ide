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
  { 'EdenEast/nightfox.nvim' },
  -- Startify
  { 'mhinz/vim-startify' },
  -- Change tab bar in nvim
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
  },

  -- Auto complete code
  { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/nvim-cmp' },
  -- ensure the configuration of the language servers
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'jay-babu/mason-null-ls.nvim' },
  -- { 'jose-elias-alvarez/null-ls.nvim' },
  { 'nvimtools/none-ls.nvim' },
  -- Snippets
  { 'L3MON4D3/LuaSnip' },
  { 'saadparwaiz1/cmp_luasnip' },
  { 'honza/vim-snippets' },


  -- Plug for comment
  { 'scrooloose/nerdcommenter' },

  -- -- Auto pairs for '(' '[' '{'
  { 'jiangmiao/auto-pairs' },

  -- Multiple cursor editor
  { 'mg979/vim-visual-multi',           branch = 'master' },

  -- Higlight yank area
  { 'machakann/vim-highlightedyank' },

  -- sneak jump in code
  { 'justinmk/vim-sneak' },

  -- Telescope fuzzi finder
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.3',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- lua colorizer (higlight with color)
  { 'norcalli/nvim-colorizer.lua' },

  -- Rainbow, color for parentheses
  { 'junegunn/rainbow_parentheses.vim' },

  -- ****** PLUGINS TO INTEGRATE GIT ******
  { 'mhinz/vim-signify' },
  { 'tpope/vim-fugitive' },
  -- Commit browser
  { 'junegunn/gv.vim' },
  -- Show commit message an autr (like git blame)
  { 'rhysd/git-messenger.vim' },
  -- Handle Git stash and commits
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- 'required'
      -- "sindrets/diffview.nvim", -- optional
    },
    config = true
  },

  -- Indent lines (Show ventical lines foor every identation)
  { 'Yggdroot/indentLine' },

  -- tagbar use (<leader>;) to open or close it at the right side
  { 'majutsushi/tagbar' },

  -- folding python code use shortcut za to toggle fold,
  -- more information :help fold-command
  { 'tmhedberg/SimpylFold' },

  -- Explorer tree
  { 'nvim-tree/nvim-tree.lua' },
}
