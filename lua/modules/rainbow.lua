-- Set the global variables for the rainbow plugin
vim.g.rainbow_max_level = 16
vim.g.rainbow_pairs = { {'(', ')'}, {'[', ']'}, {'{', '}'} }

-- Create an augroup and autocmd for RainbowParentheses
vim.api.nvim_exec([[
    augroup Rainbow
    autocmd!
    autocmd FileType * RainbowParentheses
    augroup END
]], false)