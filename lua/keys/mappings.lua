-- Better nav for omnicomplete
vim.keymap.set('i', '<c-j>', 'pumvisible() ? "\\<C-n>" : "\\<Down>"')
vim.keymap.set('i', '<c-k>', 'pumvisible() ? "\\<C-p>" : "\\<Up>"')

-- Resize windows using Ctrl+Alt+(arrow keys)
vim.keymap.set('n', '<C-M-k>', ':resize -2<CR>')
vim.keymap.set('n', '<C-M-j>', ':resize +2<CR>')
vim.keymap.set('n', '<C-M-l>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<C-M-h>', ':vertical resize +2<CR>')

-- Alternative way to go to normal mode
vim.keymap.set('i', '<C-j>', '<ESC>')
vim.keymap.set('v', '<C-j>', '<ESC>')
vim.keymap.set('n', '<C-j>', '<ESC>')

-- Easy CAPS
vim.keymap.set('i', '<F3>', '<ESC>viw~i<ESC>')
vim.keymap.set('n', '<F3>', 'viw~')
-- Use F3 to toggle case for the selected text
vim.keymap.set('v', '<F3>', '~')

-- Copy words
vim.keymap.set('i', '<C-c>', '<ESC>viwyi<ESC>')
vim.keymap.set('n', '<C-c>', 'viwy')
-- Copy in visual mode with Ctr+c
vim.keymap.set('v', '<C-c>', 'y')

-- Quote
vim.keymap.set('n', "'", "ciw''<ESC>Pb")
vim.keymap.set('n', '"', 'ciw""<ESC>Pb')
vim.keymap.set('v', "'", "c''<ESC>P")
vim.keymap.set('v', '"', 'c""<ESC>P')

-- Unquote current word
vim.keymap.set('n', "<leader>'", "diwpb2h2x")
vim.keymap.set('n', '<leader>"', "diwpb2h2x")

-- TAB in general mode will move to text buffer
vim.keymap.set('n', '<TAB>', vim.cmd.BufferNext)
-- SHIFT-TAB will go back
vim.keymap.set('n', '<S-TAB>', vim.cmd.BufferPrevious)

-- Alternate way to save
vim.keymap.set('n', '<C-s>', vim.cmd.w)
vim.keymap.set('i', '<C-s>', '<ESC>:w<CR>')
vim.keymap.set('v', '<C-s>', '<ESC>:w<CR>')
vim.keymap.set('n', '<C-q>', vim.cmd.q)

-- Better tabbing
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Close buffer
vim.keymap.set('n', '<C-M-d>', ':BufferClose<CR>')
vim.keymap.set('n', '<C-M-c>', ':BufferCloseAllButCurrent<CR>')


-- VM mappings
vim.g.VM_maps = {
    ['Find Under'] = '<C-d>',
    ['Find Subword Under'] = '<C-d>',
    ['Select Cursor Down'] = '<M-j>',
    ['Select Cursor Up'] = '<M-k>',
    ['Exit'] = '<C-j>',
    -- VM Mouse mappings
    ['Mouse Cursor'] = '<C-LeftMouse>',
    ['Mouse Word'] = '<C-RightMouse>',
    ['Mouse Column'] = '<M-C-RightMouse>',
}

-- Formating
vim.keymap.set('v', '<leader>h', '<Plug>(coc-format-selected)')
vim.keymap.set('n', '<leader>h', '<Plug>(coc-format-selected)')

-- If conditions need to be handled within Lua code
if vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1 then
    vim.keymap.set('n', '<C-M-n>', ':split<CR>:resize 5<CR>:terminal powershell.exe<CR>i')
elseif vim.fn.has('unix') == 1 or vim.fn.has('wsl') == 1 then
    vim.keymap.set('n', '<C-M-n>', ':split<CR>:resize 5<CR>:terminal<CR>i')
end

-- Close terminal with ESC
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>:q<CR>')

-- Toggle the Tagbar that shows the tags of the current file (classes, functions, variables)
vim.keymap.set('n', '<leader>;', ':TagbarToggle<cr>')

-- Open exploorer side
vim.keymap.set("n", "<space>e", ":NvimTreeFindFile <CR>", {})
