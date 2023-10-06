-- Set leader key
vim.g.mapleader = " "  -- Set leader key to space

vim.cmd('syntax enable')                -- Enables syntax highlighing
vim.opt.hlsearch = false                -- Disable the highlighting
-- vim.opt.cursorline = true               -- Enable highlighting of the current line (commented out as in the original .vim file)
vim.opt.hidden = true                   -- Required to keep multiple buffers open multiple buffers
vim.cmd('set nowrap')                   -- Display long lines as just one line
vim.opt.encoding = 'utf-8'              -- The encoding displayed
vim.opt.pumheight = 10                  -- Makes popup menu smaller
vim.opt.fileencoding = 'utf-8'          -- The encoding written to file
vim.opt.ruler = true                    -- Show the cursor position all the time
vim.opt.cmdheight = 2                   -- More space for displaying messages
vim.opt.iskeyword:append("-")           -- Treat dash separated words as a word text object"
vim.opt.mouse = 'a'                     -- Enable your mouse
vim.opt.splitbelow = true               -- Horizontal splits will automatically be below
vim.opt.splitright = true               -- Vertical splits will automatically be to the right
vim.opt.conceallevel = 0                -- So that I can see `` in markdown files
vim.opt.tabstop = 4                     -- Insert 2 spaces for a tab
vim.opt.shiftwidth = 2                  -- Change the number of space characters inserted for indentation
vim.opt.smarttab = true                 -- Makes tabbing smarter will realize you have 2 vs 4
vim.opt.expandtab = true                -- Converts tabs to spaces
vim.opt.smartindent = true              -- Makes indenting smart
vim.opt.autoindent = true               -- Good auto indent
vim.opt.laststatus = 0                  -- Always display the status line
vim.opt.number = true                   -- Line numbers
vim.opt.relativenumber = true           -- Relative line numbers
vim.opt.background = 'dark'             -- Tell vim what the background color looks like
vim.opt.showtabline = 2                 -- Always show tabs
vim.opt.showmode = false                -- We don't need to see things like -- INSERT -- anymore
vim.opt.backup = false                  -- This is recommended by coc
vim.opt.writebackup = false             -- This is recommended by coc
vim.opt.updatetime = 300                -- Faster completion
vim.opt.timeoutlen = 500                -- By default timeoutlen is 1000 ms
vim.opt.formatoptions:remove("cro")     -- Stop newline continuation of comments
vim.opt.clipboard = 'unnamedplus'       -- Copy paste between vim and everything else
-- vim.opt.autochdir = true              -- Your working directory will always be the same as your working directory (commented out as in the original .vim file)
vim.opt.foldmethod = 'syntax'           -- Set foldmethod to syntax
vim.opt.foldnestmax = 10                -- Set foldnestmax to 10
vim.opt.foldenable = false              -- Disable folding
vim.opt.foldlevel = 2                   -- Set foldlevel to 2

-- Auto source when writing to init.vm alternatively you can run :source $MYVIMRC
vim.api.nvim_exec([[
  augroup MyAutoCmd
    autocmd!
    autocmd BufWritePost init.lua source %
  augroup END
]], false)

-- -- You can't stop me
vim.api.nvim_command('cmap w!! w !sudo tee %')  -- " set leader key
vim.cmd[[set modifiable]]
