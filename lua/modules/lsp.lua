-- Add additional capabilities supported by nvim-cmp
local lsp = require('lsp-zero')
local cmp = require('cmp')

-- ***** MASON CONFIGURATION *****
-- Autoinstall llanguage servers using mason
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'lua_ls',                          -- Lua
    'pyright',                         -- Pyhton
    'biome',                           -- JavaScript
    'cssls',                           -- CSS
    'dockerls',                        -- Docker
    'docker_compose_language_service', -- Docker Compoose
    'rust_analyzer',                   -- Rust
    'clangd',                          -- C++
  },
  handlers = {
    lsp.default_setup,
  },
})
-- Formatting autoinstall setup
require("mason-null-ls").setup({
  ensure_installed = { "autopep8", "djlint" }
})
local null_ls = require("null-ls")
null_ls.setup({
  sources = {
    -- autopep8 is deprected
    -- null_ls.builtins.formatting.utopep8,
    null_ls.builtins.formatting.djlint
  },
})

-- ***** CONFIGURATE THE LSP *****
require('luasnip.loaders.from_snipmate').lazy_load()
cmp.setup({
  sources = {
    { name = 'nvim_lsp' }, -- LSP autocomplete
    { name = 'luasnip' },  -- Snippets
  },
  preselect = 'item',      -- Select first item
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
  -- modify keybind for autocomplete
  mapping = cmp.mapping.preset.insert({
    ['<TAB>'] = cmp.mapping.select_next_item(),
    ['<S-TAB>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
  -- Add border to the LSP window
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  -- Change how the items in the LSP window are shown
  formatting = {
    -- changing the order of fields so the icon is at the end
    fields = { 'abbr', 'kind', 'menu' },
    -- Change the icons in the LSP menu
    format = function(entry, item)
      local menu_icon = {
        nvim_lsp = 'λ',
        luasnip = '⋗',
        buffer = 'Ω',
        path = '🖫',
        nvim_lua = 'Π',
      }
      item.menu = menu_icon[entry.source.name]
      return item
    end,
  },
})
-- Simbols for the lintener
lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

-- Create function to AUTOFORMAT on save
--  More information in https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/lsp.md#using-built-in-functions
local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
local lsp_format_on_save = function(bufnr)
  vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
  vim.api.nvim_create_autocmd('BufWritePre', {
    group = augroup,
    buffer = bufnr,
    callback = function()
      -- Autoformat
      vim.lsp.buf.format({
        async = false,
        timeout_ms = 1000,
        -- Filter to only apply format to clients that use null-la
        -- filter = function(client)
        --   return client.name == "null-ls"
        -- end
      })
    end,
  })
end

-- Command lsp on only the buffer
lsp.on_attach(function(_, bufnr)
  local opts = { buffer = bufnr, remap = false }
  -- see :help lsp-zero-keybindings to learn the available actions
  vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  -- Add the function to AUTOFORMAT only on the buffer
  lsp_format_on_save(bufnr)
end)

-- ***** Set up the LSP *****
lsp.setup()

-- SHOW THE DIAGNOSTIC TEXT NOT AS INLINE UT AS A HOVER WINDOW
vim.diagnostic.config({
  virtual_text = false
})
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
