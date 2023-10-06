-- Function to check if a feature exists (-- if has("feature"))
local function has(feature)
  return vim.fn.has(feature) == 1
end

-- onedark.vim override: Don't set a background color when running in a terminal;
if has("autocmd") and not has("gui_running") then
  vim.api.nvim_exec([[
    augroup colorset
      autocmd!
      let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
      autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
    augroup END
  ]], false)
end

-- Set comment text to be italic in terminal
vim.api.nvim_exec([[
  hi Comment cterm=italic
]], false)

-- OneDark settings
vim.g.onedark_hide_endofbuffer = 1
vim.g.onedark_terminal_italics = 1
vim.g.onedark_termcolors = 256

-- Enable syntax highlighting and set colorscheme to onedark
vim.cmd('syntax on')
vim.cmd('colorscheme onedark')

-- Check if your terminal has 24-bit color support and set termguicolors
if has("termguicolors") then
  vim.opt.termguicolors = true
  vim.api.nvim_exec([[
    hi LineNr ctermbg=NONE guibg=NONE
  ]], false)
end
