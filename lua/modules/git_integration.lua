-- SIGNIFY CONFIGURATIOON
vim.g.signify_sign_add = '+'
vim.g.signify_sign_delete = '_'
vim.g.signify_sign_delete_first_line = '‾'
vim.g.signify_sign_change = '~'

-- NEGITCONFIGURATION
local neogit = require('neogit')

-- MAPPINGS
-- See panel showing current git information
vim.keymap.set('n', '<leader>gs', function() neogit.open({ kind = "split" }) end, {})
vim.keymap.set('n', '<S-g>', neogit.open, {})
-- Diff split for the current file in buffer
vim.keymap.set('n', '<leader>ge', ':Gdiffsplit<CR>')
-- Diff split for the current chunk
vim.keymap.set('n', '<leader>gg', ':SignifyHunkDiff<CR>')
-- Git GV commit browser commands
vim.keymap.set('n', '<leader>gv', ':GV!<CR>')
