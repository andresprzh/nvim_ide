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

-- Quote and unquote
vim.keymap.set('n', "'", "ciw''<ESC>Pb")
vim.keymap.set('n', '"', 'ciw""<ESC>Pb')
vim.keymap.set('v', "'", "c''<ESC>P")
vim.keymap.set('v', '"', 'c""<ESC>P')

-- Remove quote of the current word
vim.keymap.set('n', "<leader>'", "di'pbdb")
vim.keymap.set('n', '<leader>"', 'di"pbdb')

-- TAB in general mode will move to text buffer
vim.keymap.set('n', '<TAB>', ':bnext<CR>')
-- SHIFT-TAB will go back
vim.keymap.set('n', '<S-TAB>', ':bprevious<CR>')

-- Alternate way to save
vim.keymap.set('n', '<C-s>', vim.cmd.w)
vim.keymap.set('i', '<C-s>', '<ESC>:w<CR>')
vim.keymap.set('v', '<C-s>', '<ESC>:w<CR>')
vim.keymap.set('n', '<C-q>', vim.cmd.q)

-- <TAB>: completion.
vim.keymap.set('i', '<TAB>', '"\\<C-n>" : "\\<TAB>"')

-- Better tabbing
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Close buffer
vim.keymap.set('n', '<C-M-d>', ':BufferClose<CR>')
vim.keymap.set('n', '<C-M-c>', ':BufferCloseAllButCurrent<CR>')

-- Comment
vim.keymap.set('n', '<C-]>', '<Plug>NERDCommenterToggle')
vim.keymap.set('v', '<C-]>', '<Plug>NERDCommenterToggle<CR>gv')

-- signify shortcuts also in lua/modules/signify.lua
vim.keymap.set('n', '<leader>gg', ':SignifyHunkDiff<CR>')
vim.keymap.set('n', '<leader>ge', ':Gdiffsplit<CR>')
vim.keymap.set('n', '<leader>gv', ':GV<CR>')
-- Git vim-fugitive shortcuts
vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

-- Telescope remaps
local telescope_builtin = require('telescope.builtin')
--local telescope_actions = require('telescope.actions')
local actions = require('telescope.actions')
vim.keymap.set('n', '<C-p>', telescope_builtin.git_files, {})
vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope_builtin.help_tags, {})

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

-- EXPLORER
vim.g.coc_explorer_global_presets = {
    ['.vim'] = {
        ['root-uri'] = '~/.vim',
    },  
    ['cocConfig'] = {
        ['root-uri'] = '~/.config/coc',
    },
    ['tab'] = {
        ['position'] = 'tab',
        ['quit-on-open'] = true,
    },
    ['tab:$'] = {
        ['position'] = 'tab:$',
        ['quit-on-open'] = true,
    },
    ['floating'] = {
        ['position'] = 'floating',
        ['open-action-strategy'] = 'sourceWindow',
    },
    ['floatingTop'] = {
        ['position'] = 'floating',
        ['floating-position'] = 'center-top',
        ['open-action-strategy'] = 'sourceWindow',
    },
    ['floatingLeftside'] = {
        ['position'] = 'floating',
        ['floating-position'] = 'left-center',
        ['floating-width'] = 50,
        ['open-action-strategy'] = 'sourceWindow',
    },
    ['floatingRightside'] = {
        ['position'] = 'floating',
        ['floating-position'] = 'right-center',
        ['floating-width'] = 50,
        ['open-action-strategy'] = 'sourceWindow',
    },
    ['simplify'] = {
        ['file-child-template'] = '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]',
    },
    ['buffer'] = {
        ['sources'] = {
        {['name'] = 'buffer', ['expand'] = true}
        }
    }
}
-- Open exploorer
vim.keymap.set("n", "<space><S-e>", ":CocCommand explorer --preset floating<CR>", opts)
-- Open exploorer side
vim.keymap.set("n", "<space>e", ":CocCommand explorer --preset simplify<CR>", opts)
