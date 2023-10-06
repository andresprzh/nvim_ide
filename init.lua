-- Auto-install packer.nvim if not exists
vim.cmd[[set modifiable]]
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
require("lazy").setup("plugins")

if vim.fn.has('win32') or vim.fn.has('win64') then
    base_path = "~/AppData/Local"
else
    base_path = "~/.config"
end


-----------------------Source--------------------
require("general.settings")

------------------Settings and Keys--------------
require("keys.mappings")

---------------------Plugins-------------------
-- require("plugins.plugins")

-- --CoC config
vim.cmd('source' .. base_path .. '/nvim/modules/coc.vim')

--FzF config
-- vim.cmd('source' .. base_path .. '/nvim/modules/fzf.vim')  -- This is commented out as in the original .vim file
--Rainbow
vim.cmd('source' .. base_path .. '/nvim/modules/rainbow.vim')
--Git integration
vim.cmd('source' .. base_path .. '/nvim/modules/signify.vim')
-- NERD commenter
vim.cmd('source' .. base_path .. '/nvim/modules/nerdcommenter.vim')
-- avoid closing window when buffer is close
-- vim.cmd('source' .. base_path .. '/nvim/modules/buffdelete.vim')  -- This is commented out as in the original .vim file
-- multiple cursor selector
vim.cmd('source' .. base_path .. '/nvim/modules/multipleselector.vim')
-- sneak conf
vim.cmd('source' .. base_path .. '/nvim/modules/sneak.vim')
-- Indent lines
vim.cmd('source' .. base_path .. '/nvim/modules/indentlines.vim')
-- Simple fold
vim.cmd('source' .. base_path .. '/nvim/modules/simplyfold.vim')
-- Telescope
vim.cmd('source' .. base_path .. '/nvim/modules/telescope.vim')
-- Startify
vim.cmd('source' .. base_path .. '/nvim/modules/startscreen.vim')

-----------------------Themes--------------------
require('themes.onedark')
require('themes.airline')

--------------------Lua Modules------------------
--Colorizer
require("modules.plug-colorizer")

