-- Auto install packer.nvim if not exists
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone --depth 1 https://github.com/wbthomason/packer.nvim '..install_path)
end
-- Determine the OS and set the base path accordingly
local os_name = vim.loop.os_uname().sysname
local base_path

if os_name == "Windows_NT" then  -- or use if vim.fn.has('win32') or vim.fn.has('win64') then
    base_path = "~/AppData/Local"
else
    base_path = "~/.config"
end


-----------------------Source--------------------
require("general.settings")

------------------Settings and Keys--------------
require("keys.mappings")

-----------------------Plugins-------------------
require("plugins.plugins")

--CoC config
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

