-- Enable tabline
vim.g["airline#extensions#tabline#enabled"] = 1
vim.g["airline#extensions#tabline#left_sep"] = ''
vim.g["airline#extensions#tabline#left_alt_sep"] = ''
vim.g["airline#extensions#tabline#right_sep"] = ''
vim.g["airline#extensions#tabline#right_alt_sep"] = ''

-- Other settings
vim.g["airline#extensions#hunks#enabled"] = 0
vim.g["airline#extensions#branch#enabled"] = 1

-- Enable powerline fonts
vim.g.airline_powerline_fonts = 1
vim.g.airline_left_sep = ''
vim.g.airline_right_sep = ''

-- Set airline theme
vim.g.airline_theme = 'onedark'

-- Always show tabs
vim.opt.showtabline = 2

-- We don't need to see things like -- INSERT -- anymore
vim.opt.showmode = false
