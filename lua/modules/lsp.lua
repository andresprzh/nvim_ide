-- local lspconfig = require('lspconfig')
local lsp = require('lsp-zero')
local cmp = require('cmp')

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

-- modify keybind for autocomplete
cmp.setup({
  -- snippet = {
  --   expand = function(args)
  --     luasnip.lsp_expand(args.body)
  --   end,
  -- },
  mapping = cmp.mapping.preset.insert({
    ['<TAB>'] = cmp.mapping.select_next_item(),
    ['<S-TAB>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
})

-- command lsp on only the buffer
lsp.on_attach(function(_, bufnr)
  local opts = { buffer = bufnr, remap = false }
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  -- lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

vim.diagnostic.config({
  virtual_text = true
})

-- Only format for the specific files
local filetypes = { '*.py', }
for _, filetype in ipairs(filetypes) do
  vim.cmd('autocmd BufWritePre ' .. filetype .. ' silent! :LspZeroFormat')
end
