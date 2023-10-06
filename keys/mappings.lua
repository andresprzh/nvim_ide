-- Function definitions
function Map(mode, shortcut, command, opts)
  if opts == nil then
      opts = { noremap = true, silent = true }
  end
  vim.api.nvim_set_keymap(mode, shortcut, command, opts)
end

function Nmap(shortcut, command)
  Map('n', shortcut, command, { noremap = false, silent = true })
end

function Imap(shortcut, command)
  Map('i', shortcut, command, { noremap = true, silent = true })
end

function Vmap(shortcut, command)
  Map('v', shortcut, command, { noremap = false, silent = true })
end


-- Better nav for omnicomplete
Imap('<c-j>', 'pumvisible() ? "\\<C-n>" : "\\<Down>"')
Imap('<c-k>', 'pumvisible() ? "\\<C-p>" : "\\<Up>"')

-- Resize windows using Ctrl+Alt+(arrow keys)
Nmap('<C-M-k>', ':resize -2<CR>')
Nmap('<C-M-j>', ':resize +2<CR>')
Nmap('<C-M-l>', ':vertical resize -2<CR>')
Nmap('<C-M-h>', ':vertical resize +2<CR>')

-- Alternative way to go to normal mode
Imap('<C-j>', '<ESC>')
Vmap('<C-j>', '<ESC>')

-- Easy CAPS
Imap('<F3>', '<ESC>viw~i<ESC>')
Nmap('<F3>', 'viw~')
-- Use F3 to toggle case for the selected text
Vmap('<F3>', '~')

-- Copy words
Imap('<C-c>', '<ESC>viwyi<ESC>')
Nmap('<C-c>', 'viwy')
-- Copy in visual mode with Ctr+c
Vmap('<C-c>', 'y')

-- Quote and unquote
Nmap("'", "ciw''<ESC>Pb")
Nmap('"', 'ciw""<ESC>Pb')
Vmap("'", "c''<ESC>P")
Vmap('"', 'c""<ESC>P')

-- Remove quote of the current word
Nmap("<leader>'", "di'pbdb")
Nmap('<leader>"', 'di"pbdb')

-- TAB in general mode will move to text buffer
Nmap('<TAB>', ':bnext<CR>')
-- SHIFT-TAB will go back
Nmap('<S-TAB>', ':bprevious<CR>')

-- Alternate way to save
Nmap('<C-s>', ':w<CR>')
Imap('<C-s>', '<ESC>:w<CR>')
Vmap('<C-s>', ':w<CR>')
Nmap('<C-q>', ':q<CR>')

-- <TAB>: completion.
Imap('<TAB>', 'pumvisible() ? "\\<C-n>" : "\\<TAB>"')

-- Better tabbing
Vmap('<', '<gv')
Vmap('>', '>gv')

-- Close buffer
Nmap('<C-M-d>', ':BufferClose<CR>')
Nmap('<C-M-c>', ':BufferCloseAllButCurrent<CR>')

-- Comment
Nmap('<C-]>', '<Plug>NERDCommenterToggle')
Vmap('<C-]>', '<Plug>NERDCommenterToggle<CR>gv')

-- signify and Git shortcuts also in modules/signify.vim
Nmap('<leader>gg', ':SignifyHunkDiff<CR>')
Nmap('<leader>ge', ':Gdiffsplit<CR>')
Nmap('<leader>gv', ':GV<CR>')

-- Telescope remaps
Nmap('<C-p>', '<cmd>Telescope find_files<cr>')
Nmap('<leader>fg', '<cmd>Telescope live_grep<cr>')
Nmap('<leader>fb', '<cmd>Telescope buffers<cr>')
Nmap('<leader>fh', '<cmd>Telescope help_tags<cr>')

-- VM Mouse mappings
Nmap('<C-LeftMouse>', '<Plug>(VM-Mouse-Cursor)')
Nmap('<C-RightMouse>', '<Plug>(VM-Mouse-Word)')
Nmap('<M-C-RightMouse>', '<Plug>(VM-Mouse-Column)')

-- Formating
Vmap('<leader>h', '<Plug>(coc-format-selected)')
Nmap('<leader>h', '<Plug>(coc-format-selected)')

-- If conditions need to be handled within Lua code
if vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1 then
    Nmap('<C-M-n>', ':split<CR>:resize 5<CR>:terminal powershell.exe<CR>i')
elseif vim.fn.has('unix') == 1 or vim.fn.has('wsl') == 1 then
    Nmap('<C-M-n>', ':split<CR>:resize 5<CR>:terminal<CR>i')
end

-- Close terminal with ESC
Map('t', '<Esc>', '<C-\\><C-n>')
Map('t', '<Esc><Esc>', '<C-\\><C-n>:q<CR>')

-- Toggle the Tagbar that shows the tags of the current file (classes, functions, variables)
Nmap('<leader>;', ':TagbarToggle<cr>')
