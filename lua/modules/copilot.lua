-- Copilot Configuration

local copilot = require("copilot")
local copilot_cmp = require("copilot_cmp")
local nvim_treesitter = require("nvim-treesitter.configs")

copilot.setup({
  suggestion = {
    enabled = true,
    auto_trigger = true, -- Automatically trigger suggestions
    debounce = 75,       -- Lower debounce for faster responses
  },
  panel = {
    enabled = true,
  },
  -- Set the model to GPT-4.1
  server_opts_overrides = {
    advanced = {
      model = "gpt-4-1",
    },
  },
  filetypes = {
    python = true,
    lua = true,
    javascript = true,
    typescript = true,
    go = true,
    rust = true,
    c = true,
    cpp = true,
    markdown = true,
  },
})

copilot_cmp.setup({
  method = "getCompletionsCycling",
  formatters = {
    label = require("copilot_cmp.format").format_label_text,
    insert_text = require("copilot_cmp.format").format_insert_text,
    preview = require("copilot_cmp.format").deindent,
  },
})

nvim_treesitter.setup({
  highlight = { enable = true },
  indent = { enable = true },
})
