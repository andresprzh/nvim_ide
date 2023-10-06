-- Auto-install lazy.nvim if not exists
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable eelease
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-----------------------Source--------------------
require("general.settings")

------------------Settings and Keys--------------
require("keys.mappings")

---------------------Plugins-------------------
require("lazy").setup("plugins") -- See plugins from any lua file that is in the folder lua/plugins/*.lua

--CoC config
require("lua.modules.coc")
--Rainbow
require("lua.modules.rainbow")
--Git integration
require("lua.modules.signify")
-- NERD commenter
require("lua.modules.nerdcommenter")
-- multiple cursor selector
require("lua.modules.multipleselector")
-- sneak conf
require("lua.modules.sneak")
-- Indent lines
require("lua.modules.indentlines")
-- Simple fold
require("lua.modules.simplyfold")
-- Telescope
require("lua.modules.telescope")
-- Startify
require("lua.modules.startscreen")

-----------------------Themes--------------------
require('themes.onedark')
require('themes.airline')

--------------------Lua Modules------------------
--Colorizer
require("lua.modules.plug-colorizer")

