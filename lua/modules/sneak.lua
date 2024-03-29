vim.g['sneak#label'] = 1

-- case insensitive sneak
vim.g['sneak#use_ic_scs'] = 1

-- immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
vim.g['sneak#s_next'] = 1

-- Remap so you can use , and ; with f and t
vim.api.nvim_set_keymap('n', 'gS', '<Plug>Sneak_', {})
vim.api.nvim_set_keymap('n', 'gs', '<Plug>Sneak_;', {})

-- Change the colors
vim.cmd [[highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan]]
vim.cmd [[highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow]]
