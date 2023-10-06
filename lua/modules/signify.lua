-- Set the signify signs
vim.g.signify_sign_add = '+'
vim.g.signify_sign_delete = '_'
vim.g.signify_sign_delete_first_line = '‾'
vim.g.signify_sign_change = '~'

-- If you want to disable numbers or enable text, uncomment these
-- vim.g.signify_sign_show_count = 0
-- vim.g.signify_sign_show_text = 1

-- Set the key mappings for navigating through hunks
vim.api.nvim_set_keymap('n', '<leader>gj', '<plug>(signify-next-hunk)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gk', '<plug>(signify-prev-hunk)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gJ', '9999<leader>gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gK', '9999<leader>gk', { noremap = true, silent = true })

-- If you prefer colored signs, uncomment these
-- vim.cmd 'highlight SignifySignAdd ctermbg=green guibg=#00ff00'
-- vim.cmd 'highlight SignifySignDelete ctermfg=black ctermbg=red guifg=#ffffff guibg=#ff0000'
-- vim.cmd 'highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#ffff00'