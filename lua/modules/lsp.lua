-- Add additional capabilities supported by nvim-cmp
local lsp = require('lsp-zero')
local cmp = require('cmp')

-- ***** MASON CONFIGURATION *****
-- Autoinstall llanguage servers using mason
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'lua_ls',
    'pyright',
    -- 'jedi_language_server',
    'dockerls',
    'docker_compose_language_service',
  },
  handlers = {
    lsp.default_setup,
  },
})
-- Formatting autoinstall setup
require("mason-null-ls").setup({
  ensure_installed = { "autopep8" }
})
local null_ls = require("null-ls")
null_ls.setup({
  sources = {
    null_ls.builtins.formatting.black,
  },
})

-- ***** CONFIGURATE THE LSP *****

require('luasnip.loaders.from_snipmate').lazy_load()
cmp.setup({
  sources = {
    {name = 'nvim_lsp'}, -- LSP autocomplete
    {name = 'luasnip'}, -- Snippets
  },
  preselect = 'item', -- Select first item 
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
    fields = {'abbr', 'kind', 'menu'},
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
-- Command lsp on only the buffer
lsp.on_attach(function(_, bufnr)
  local opts = { buffer = bufnr, remap = false }
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  -- lsp.default_keymaps({buffer = bufnr})
end)

-- ***** Set up the LSP *****
lsp.setup()
vim.diagnostic.config({
  virtual_text = true
})

-- ***** OTHER FUNCTIONS *****
-- Only format for the specific files
local filetypes = { '*.py', }
for _, filetype in ipairs(filetypes) do
  vim.cmd('autocmd BufWritePre ' .. filetype .. ' silent! :LspZeroFormat')
end
